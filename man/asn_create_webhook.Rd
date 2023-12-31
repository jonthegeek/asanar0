% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/webhooks.R
\name{asn_create_webhook}
\alias{asn_create_webhook}
\title{Establish a webhook}
\usage{
asn_create_webhook(opt_fields)
}
\arguments{
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
Establishing a webhook is a two-part process. First, a simple HTTP POST request initiates the creation similar to creating any other resource.  Next, in the middle of this request comes the confirmation handshake. When a webhook is created, we will send a test POST to the target with an \code{X-Hook-Secret} header. The target must respond with a \verb{200 OK} or \verb{204 No Content} and a matching \code{X-Hook-Secret} header to confirm that this webhook subscription is indeed expected. We strongly recommend storing this secret to be used to verify future webhook event signatures.  The POST request to create the webhook will then return with the status of the request. If you do not acknowledge the webhook’s confirmation handshake it will fail to setup, and you will receive an error in response to your attempt to create it. This means you need to be able to receive and complete the webhook \emph{while} the POST request is in-flight (in other words, have a server that can handle requests asynchronously).  Invalid hostnames like localhost will recieve a 403 Forbidden status code.  \verb{# Request curl -H "Authorization: Bearer <personal_access_token>" \\ -X POST https://app.asana.com/api/1.0/webhooks \\ -d "resource=8675309" \\ -d "target=https://example.com/receive-webhook/7654"}  \verb{# Handshake sent to https://example.com/ POST /receive-webhook/7654 X-Hook-Secret: b537207f20cbfa02357cf448134da559e8bd39d61597dcd5631b8012eae53e81}  \verb{# Handshake response sent by example.com HTTP/1.1 200 X-Hook-Secret: b537207f20cbfa02357cf448134da559e8bd39d61597dcd5631b8012eae53e81}  \verb{# Response HTTP/1.1 201 \{   "data": \{     "gid": "43214",     "resource": \{       "gid": "8675309",       "name": "Bugs"     \},     "target": "https://example.com/receive-webhook/7654",     "active": false,     "last_success_at": null,     "last_failure_at": null,     "last_failure_content": null   \} \}}
}
\keyword{internal}
