% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tasks.R
\name{asn_get_dependents_for_task}
\alias{asn_get_dependents_for_task}
\title{Get dependents from a task}
\usage{
asn_get_dependents_for_task(task_gid, limit, offset, opt_fields)
}
\arguments{
\item{task_gid}{(character scalar) The task to operate on.}

\item{limit}{(optional) (integer scalar) Results per page. The number of objects to return per page. The value must be between 1 and 100.}

\item{offset}{(optional) (character scalar) Offset token. An offset to the next page returned by the API. A pagination request will return an offset token, which can be used as an input parameter to the next request. If an offset is not passed in, the API will return the first page of results. 'Note: You can only pass in an offset that was returned to you via a previously paginated request.'}

\item{opt_fields}{(optional) (list) Defines fields to return. Some requests return \emph{compact} representations of objects in order to conserve resources and complete the request more efficiently. Other times requests return more information than you may need. This option allows you to list the exact set of fields that the API should be sure to return for the objects. The field names should be provided as paths, described below. The id of included objects will always be returned, regardless of the field options.}
}
\value{
The \emph{task} is the basic object around which many operations in Asana are centered.\tabular{lll}{
   \strong{Property} \tab \strong{Class} \tab \strong{Description} \cr
   gid \tab character scalar \tab Globally unique identifier of the resource, as a string. \cr
   resource_type \tab character scalar \tab The base type of this resource. \cr
   name \tab character scalar \tab The name of the task. \cr
   resource_subtype \tab character scalar \tab The subtype of this resource. Different subtypes retain many of the same fields and behavior, but may render differently in Asana or represent resources with different semantic meaning. The resource_subtype \code{milestone} represent a single moment in time. This means tasks with this subtype cannot have a start_date. \cr
}
}
\description{
Returns the compact representations of all of the dependents of a task.
}
\keyword{internal}
