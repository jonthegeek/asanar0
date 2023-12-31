% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/goal_relationships.R
\name{asn_get_goal_relationship}
\alias{asn_get_goal_relationship}
\title{Get a goal relationship}
\usage{
asn_get_goal_relationship(goal_relationship_gid, opt_fields)
}
\arguments{
\item{goal_relationship_gid}{(character scalar) Globally unique identifier for the goal relationship.}

\item{opt_fields}{(optional) (list) Defines fields to return. Some requests return \emph{compact} representations of objects in order to conserve resources and complete the request more efficiently. Other times requests return more information than you may need. This option allows you to list the exact set of fields that the API should be sure to return for the objects. The field names should be provided as paths, described below. The id of included objects will always be returned, regardless of the field options.}
}
\value{
A \emph{goal relationship} is an object representing the relationship between a goal and another goal, a project, or a portfolio.\tabular{lll}{
   \strong{Property} \tab \strong{Class} \tab \strong{Description} \cr
   gid \tab character scalar \tab Globally unique identifier of the resource, as a string. \cr
   resource_type \tab character scalar \tab The base type of this resource. \cr
   contribution_weight \tab number \tab The weight that the supporting resource's progress contributes to the supported goal's progress. This can only be 0 or 1. \cr
   resource_subtype \tab character scalar \tab The subtype of this resource. Different subtypes retain many of the same fields and behavior, but may render differently in Asana or represent resources with different semantic meaning. \cr
   supporting_resource \tab list \tab The supporting resource that supports the goal. This can be either a project, portfolio, or goal. \cr
   supported_goal \tab list \tab The goal that the supporting resource supports. \cr
}
}
\description{
Returns the complete updated goal relationship record for a single goal relationship.
}
\keyword{internal}
