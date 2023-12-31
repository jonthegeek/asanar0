# Use the api_spec to generate endpoint functions

# Load the spec ----------------------------------------------------------------

target_file <- here::here("data-raw", "api_spec.rds")
api_spec <- readRDS(target_file)

# Load helper functions --------------------------------------------------------

source(here::here("data-raw", "03-b_path-helpers.R"), local = TRUE)

# Prep info about each path ----------------------------------------------------

function_definitions <- api_spec$paths |>
  dplyr::mutate(
    endpoint_file = ..name_endpoint_file(.data$endpoint),
    fun_name = ..name_function(.data$operationId),
    fun_formals = ..concat_formals(.data$parameters),
    description = stringr::str_replace_all(.data$description, "\n", " ") |>
      # Hacks to avoid bad links, investigate.
      stringr::str_replace_all(
        stringr::fixed("](/docs"),
        "](https://developers.asana.com/docs"
      ) |>
      stringr::str_replace_all(
        stringr::fixed("](/reference"),
        "](https://developers.asana.com/reference"
      ),
    response_details = ..document_response(
      .data$response_description,
      .data$response_properties
    ),
    param_docs = ..document_parameters(.data$parameters),
    documentation = glue::glue(
      "#' {.data$summary}",
      "#' {.data$description}",
      "{.data$param_docs}",
      "{.data$response_details}",
      "#' @keywords internal",
      .sep = "\n#'\n"
    ),
    body = lengths(.data$requestBody) > 0,
    call = ..build_calls(
      .data$endpoint, .data$parameters, .data$body, .data$http_method
    ),
    function_definition = glue::glue(
      "{.data$fun_name} <- function({.data$fun_formals}) {{",
      "  # Confirm that this makes sense. If so, change",
      "  # @keywords internal to @export. Also enable covr!",
      "  # nocov start",
      "  {.data$call}",
      "  # nocov end",
      "}}",
      "\n",
      .sep = "\n",
      .trim = FALSE
    ),
    full_definition = glue::glue(
      "{.data$documentation}",
      "{.data$function_definition}",
      .sep = "\n",
      .trim = FALSE
    )
  )

function_definitions |>
  dplyr::group_by(.data$endpoint_file) |>
  dplyr::summarize(
    all_definitions = paste(
      .data$full_definition,
      collapse = "\n"
    )
  ) |>
  purrr::pwalk(
    \(endpoint_file, all_definitions, ...) {
      writeLines(
        all_definitions,
        paste0("R/", endpoint_file)
      )
    }
  )

# TODO: Either run styler::style_pkg(), or do the equivalent. It catching some
# of the weirdness that results from auto-generating.

# "/users" and "/users/{user_gid}" are effectively the same endpoint if there
# isn't a user_gid. You'd think "/users" would "win", but, without a query, the
# default return is "/users/me".

# The only POST with multipart is attachments.

# For PUT, "/tags/{tag_gid}" is lacking a requestBody param (also in the docs),
# but it has to match "/tags".

# api_spec$paths |>
#   dplyr::distinct(http_method)

rm(
  api_spec,
  function_definitions,
  target_file
)
source(here::here("data-raw", "03-c_path-cleanup.R"), local = TRUE)
