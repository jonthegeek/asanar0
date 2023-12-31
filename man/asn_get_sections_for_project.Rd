% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/projects.R
\name{asn_get_sections_for_project}
\alias{asn_get_sections_for_project}
\title{Get sections in a project}
\usage{
asn_get_sections_for_project(project_gid, limit, offset, opt_fields)
}
\arguments{
\item{project_gid}{(character scalar) Globally unique identifier for the project.}

\item{limit}{(optional) (integer scalar) Results per page. The number of objects to return per page. The value must be between 1 and 100.}

\item{offset}{(optional) (character scalar) Offset token. An offset to the next page returned by the API. A pagination request will return an offset token, which can be used as an input parameter to the next request. If an offset is not passed in, the API will return the first page of results. 'Note: You can only pass in an offset that was returned to you via a previously paginated request.'}

\item{opt_fields}{(optional) (list) Defines fields to return. Some requests return \emph{compact} representations of objects in order to conserve resources and complete the request more efficiently. Other times requests return more information than you may need. This option allows you to list the exact set of fields that the API should be sure to return for the objects. The field names should be provided as paths, described below. The id of included objects will always be returned, regardless of the field options.}
}
\value{
A \emph{section} is a subdivision of a project that groups tasks together. It can either be a header above a list of tasks in a list view or a column in a board view of a project.\tabular{lll}{
   \strong{Property} \tab \strong{Class} \tab \strong{Description} \cr
   gid \tab character scalar \tab Globally unique identifier of the resource, as a string. \cr
   resource_type \tab character scalar \tab The base type of this resource. \cr
   name \tab character scalar \tab The name of the section (i.e. the text displayed as the section header). \cr
}
}
\description{
Returns the compact records for all sections in the specified project.
}
\keyword{internal}
