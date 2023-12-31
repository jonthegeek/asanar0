% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/custom_fields.R
\name{asn_delete_custom_field}
\alias{asn_delete_custom_field}
\title{Delete a custom field}
\usage{
asn_delete_custom_field(custom_field_gid, opt_fields)
}
\arguments{
\item{custom_field_gid}{(character scalar) Globally unique identifier for the custom field.}

\item{opt_fields}{(optional) (list) Defines fields to return. Some requests return \emph{compact} representations of objects in order to conserve resources and complete the request more efficiently. Other times requests return more information than you may need. This option allows you to list the exact set of fields that the API should be sure to return for the objects. The field names should be provided as paths, described below. The id of included objects will always be returned, regardless of the field options.}
}
\value{
An empty object. Some endpoints do not return an object on success. The success is conveyed through a 2-- status code and returning an empty object.
}
\description{
A specific, existing custom field can be deleted by making a DELETE request on the URL for that custom field. Locked custom fields can only be deleted by the user who locked the field. Returns an empty data record.
}
\keyword{internal}
