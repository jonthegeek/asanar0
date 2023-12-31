% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/projects.R
\name{asn_insert_section_for_project}
\alias{asn_insert_section_for_project}
\title{Move or Insert sections}
\usage{
asn_insert_section_for_project(project_gid, opt_fields)
}
\arguments{
\item{project_gid}{(character scalar) Globally unique identifier for the project.}

\item{opt_fields}{(optional) (list) Defines fields to return. Some requests return \emph{compact} representations of objects in order to conserve resources and complete the request more efficiently. Other times requests return more information than you may need. This option allows you to list the exact set of fields that the API should be sure to return for the objects. The field names should be provided as paths, described below. The id of included objects will always be returned, regardless of the field options.}
}
\value{
An empty object. Some endpoints do not return an object on success. The success is conveyed through a 2-- status code and returning an empty object.
}
\description{
Move sections relative to each other. One of \code{before_section} or \code{after_section} is required.  Sections cannot be moved between projects.  Returns an empty data block.
}
\keyword{internal}
