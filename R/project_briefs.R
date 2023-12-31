#' Get a project brief
#'
#' Get the full record for a project brief.
#'
#' @param project_brief_gid (character scalar) Globally unique identifier for the project brief.
#' @param opt_fields (optional) (list) Defines fields to return. Some requests return *compact* representations of objects in order to conserve resources and complete the request more efficiently. Other times requests return more information than you may need. This option allows you to list the exact set of fields that the API should be sure to return for the objects. The field names should be provided as paths, described below. The id of included objects will always be returned, regardless of the field options.
#'
#' @return A *Project Brief* allows you to explain the what and why of the project to your team.
#' | **Property** | **Class** | **Description** |
#' |:-------------|:----------|:----------------|
#' | gid | character scalar | Globally unique identifier of the resource, as a string. |
#' | resource_type | character scalar | The base type of this resource. |
#' | html_text | character scalar | HTML formatted text for the project brief. |
#' | title | character scalar | The title of the project brief. |
#' | permalink_url | character scalar | A url that points directly to the object within Asana. |
#' | project | list | The project with which this project brief is associated. |
#' | text | character scalar | [Opt In](https://developers.asana.com/docs/inputoutput-options). The plain text of the project brief. |
#'
#' @keywords internal
asn_get_project_brief <- function(project_brief_gid, opt_fields) {
  # Confirm that this makes sense. If so, change
  # @keywords internal to @export. Also enable covr!
  # nocov start
  .call_api(
    endpoint = list("/project_briefs/{project_brief_gid}", project_brief_gid = project_brief_gid),
    query = list(opt_fields = rlang::maybe_missing(opt_fields)),
    method = "get"
  )
  # nocov end
}


#' Update a project brief
#'
#' An existing project brief can be updated by making a PUT request on the URL for that project brief. Only the fields provided in the `data` block will be updated; any unspecified fields will remain unchanged.  Returns the complete updated project brief record.
#'
#' @param project_brief_gid (character scalar) Globally unique identifier for the project brief.
#' @param opt_fields (optional) (list) Defines fields to return. Some requests return *compact* representations of objects in order to conserve resources and complete the request more efficiently. Other times requests return more information than you may need. This option allows you to list the exact set of fields that the API should be sure to return for the objects. The field names should be provided as paths, described below. The id of included objects will always be returned, regardless of the field options.
#'
#' @return A *Project Brief* allows you to explain the what and why of the project to your team.
#' | **Property** | **Class** | **Description** |
#' |:-------------|:----------|:----------------|
#' | gid | character scalar | Globally unique identifier of the resource, as a string. |
#' | resource_type | character scalar | The base type of this resource. |
#' | html_text | character scalar | HTML formatted text for the project brief. |
#' | title | character scalar | The title of the project brief. |
#' | permalink_url | character scalar | A url that points directly to the object within Asana. |
#' | project | list | The project with which this project brief is associated. |
#' | text | character scalar | [Opt In](https://developers.asana.com/docs/inputoutput-options). The plain text of the project brief. |
#'
#' @keywords internal
asn_update_project_brief <- function(project_brief_gid, opt_fields) {
  # Confirm that this makes sense. If so, change
  # @keywords internal to @export. Also enable covr!
  # nocov start
  .call_api(
    endpoint = list("/project_briefs/{project_brief_gid}", project_brief_gid = project_brief_gid),
    query = list(opt_fields = rlang::maybe_missing(opt_fields)),
    method = "put",
    body = stop("We do not properly build this yet. Edit by hand.")
  )
  # nocov end
}


#' Delete a project brief
#'
#' Deletes a specific, existing project brief.  Returns an empty data record.
#'
#' @param project_brief_gid (character scalar) Globally unique identifier for the project brief.
#' @param opt_fields (optional) (list) Defines fields to return. Some requests return *compact* representations of objects in order to conserve resources and complete the request more efficiently. Other times requests return more information than you may need. This option allows you to list the exact set of fields that the API should be sure to return for the objects. The field names should be provided as paths, described below. The id of included objects will always be returned, regardless of the field options.
#'
#' @return An empty object. Some endpoints do not return an object on success. The success is conveyed through a 2-- status code and returning an empty object.
#'
#'
#' @keywords internal
asn_delete_project_brief <- function(project_brief_gid, opt_fields) {
  # Confirm that this makes sense. If so, change
  # @keywords internal to @export. Also enable covr!
  # nocov start
  .call_api(
    endpoint = list("/project_briefs/{project_brief_gid}", project_brief_gid = project_brief_gid),
    query = list(opt_fields = rlang::maybe_missing(opt_fields)),
    method = "delete"
  )
  # nocov end
}
