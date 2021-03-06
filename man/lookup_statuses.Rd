% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/statuses.R
\name{lookup_statuses}
\alias{lookup_statuses}
\title{lookup_tweets}
\usage{
lookup_statuses(statuses, token = NULL, parse = TRUE,
  clean_tweets = FALSE, as_double = FALSE)
}
\arguments{
\item{statuses}{User id or screen name of target user.}

\item{token}{OAuth token (1.0 or 2.0). By default
\code{token = NULL} fetches a non-exhausted token from
an environment variable @describeIn tokens.}

\item{parse}{Logical, indicating whether or not to parse
return object into data frame(s).}

\item{clean_tweets}{logical indicating whether to remove non-ASCII
characters in text of tweets. defaults to FALSE.}

\item{as_double}{logical indicating whether to handle ID variables
as double (numeric) class. By default, this is set to FALSE, meaning
ID variables are treated as character vectors. Setting this to
TRUE can provide performance (speed and memory) boost but can also
lead to issues when printing and saving, depending on the format.}
}
\value{
json response object (max is 18000 per token)
}
\description{
Returns Twitter user data_frame object for
  specified user_ids or screen_names.
}
\examples{
\dontrun{
# lookup tweets data via status_id vector
statuses <- c("567053242429734913", "266031293945503744",
  "440322224407314432")
statuses <- lookup_statuses(statuses)
statuses

# view users data for these statuses via tweets_data()
users_data(statuses)
}

}
\seealso{
\url{https://dev.twitter.com/overview/documentation}

Other tweets: \code{\link{get_favorites}},
  \code{\link{get_timeline}}, \code{\link{search_tweets}},
  \code{\link{stream_tweets}}, \code{\link{tweets_data}}
}

