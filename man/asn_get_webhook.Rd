% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/webhooks.R
\name{asn_get_webhook}
\alias{asn_get_webhook}
\title{Get a webhook}
\usage{
asn_get_webhook(webhook_gid, opt_fields)
}
\arguments{
\item{webhook_gid}{(character scalar) Globally unique identifier for the webhook.}

\item{opt_fields}{(optional) (list) Defines fields to return. Some requests return \emph{compact} representations of objects in order to conserve resources and complete the request more efficiently. Other times requests return more information than you may need. This option allows you to list the exact set of fields that the API should be sure to return for the objects. The field names should be provided as paths, described below. The id of included objects will always be returned, regardless of the field options.}
}
\value{
Webhook objects represent the state of an active subscription for a server to be updated with information from Asana. This schema represents the subscription itself, not the objects that are sent to the server. For information on those please refer to the \href{https://developers.asana.com/reference/events}{event} schema.\tabular{lll}{
   \strong{Property} \tab \strong{Class} \tab \strong{Description} \cr
   gid \tab character scalar \tab Globally unique identifier of the resource, as a string. \cr
   resource_type \tab character scalar \tab The base type of this resource. \cr
   active \tab logical scalar \tab If true, the webhook will send events - if false it is considered inactive and will not generate events. \cr
   resource \tab list \tab A generic Asana Resource, containing a globally unique identifier. \cr
   target \tab character scalar \tab The URL to receive the HTTP POST. \cr
   created_at \tab datetime scalar \tab The time at which this resource was created. \cr
   filters \tab list \tab Whitelist of filters to apply to events from this webhook. If a webhook event passes any of the filters the event will be delivered; otherwise no event will be sent to the receiving server. \cr
   last_failure_at \tab datetime scalar \tab The timestamp when the webhook last received an error when sending an event to the target. \cr
   last_failure_content \tab character scalar \tab The contents of the last error response sent to the webhook when attempting to deliver events to the target. \cr
   last_success_at \tab datetime scalar \tab The timestamp when the webhook last successfully sent an event to the target. \cr
}
}
\description{
Returns the full record for the given webhook.
}
\keyword{internal}
