% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/portfolio_memberships.R
\name{asn_get_portfolio_membership}
\alias{asn_get_portfolio_membership}
\title{Get a portfolio membership}
\usage{
asn_get_portfolio_membership(portfolio_membership_gid, opt_fields)
}
\arguments{
\item{portfolio_membership_gid}{(character scalar) NA}

\item{opt_fields}{(optional) (list) Defines fields to return. Some requests return \emph{compact} representations of objects in order to conserve resources and complete the request more efficiently. Other times requests return more information than you may need. This option allows you to list the exact set of fields that the API should be sure to return for the objects. The field names should be provided as paths, described below. The id of included objects will always be returned, regardless of the field options.}
}
\value{
This object determines if a user is a member of a portfolio.\tabular{lll}{
   \strong{Property} \tab \strong{Class} \tab \strong{Description} \cr
   gid \tab character scalar \tab Globally unique identifier of the resource, as a string. \cr
   resource_type \tab character scalar \tab The base type of this resource. \cr
   portfolio \tab list \tab \href{https://developers.asana.com/docs/inputoutput-options}{Opt In}. The portfolio the user is a member of. \cr
   user \tab list \tab A \emph{user} object represents an account in Asana that can be given access to various workspaces, projects, and tasks. \cr
}
}
\description{
Returns the complete portfolio record for a single portfolio membership.
}
\keyword{internal}
