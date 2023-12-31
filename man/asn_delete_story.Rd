% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stories.R
\name{asn_delete_story}
\alias{asn_delete_story}
\title{Delete a story}
\usage{
asn_delete_story(story_gid, opt_fields)
}
\arguments{
\item{story_gid}{(character scalar) Globally unique identifier for the story.}

\item{opt_fields}{(optional) (list) Defines fields to return. Some requests return \emph{compact} representations of objects in order to conserve resources and complete the request more efficiently. Other times requests return more information than you may need. This option allows you to list the exact set of fields that the API should be sure to return for the objects. The field names should be provided as paths, described below. The id of included objects will always be returned, regardless of the field options.}
}
\value{
An empty object. Some endpoints do not return an object on success. The success is conveyed through a 2-- status code and returning an empty object.
}
\description{
Deletes a story. A user can only delete stories they have created.  Returns an empty data record.
}
\keyword{internal}
