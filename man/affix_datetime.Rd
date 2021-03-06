% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/file_naming.R
\name{affix_datetime}
\alias{affix_datetime}
\title{Put the current date-time into a file name}
\usage{
affix_datetime(
  filename,
  position = c("end", "start"),
  format = "\%Y-\%m-\%dT\%H:\%M:\%S",
  delimiter = "_",
  utc_time = TRUE,
  add_tz = TRUE
)
}
\arguments{
\item{filename}{The filename to modify.}

\item{position}{Where to place the formatted date-time. This could either be
at the \code{"end"} of the filename (the default) or at the \code{"start"}.}

\item{format}{A \code{\link[base:strptime]{base::strptime()}} format string for formatting the
date-time. By default, this is \code{"\%Y-\%m-\%dT\%H:\%M:\%S"} which expresses the
date according to the ISO 8601 standard. For example, if the current
date-time is 2020-12-04 13:11:23, the formatted string would become
\code{"2020-12-04T13:11:23"}. Refer to the documentation on \code{\link[base:strptime]{base::strptime()}}
for conversion specifications if planning to use a different format string.}

\item{delimiter}{The delimiter characters to use for separating the date-time
string from the original file name.}

\item{utc_time}{An option for whether to use the current UTC time to
establish the date-time (the default, with \code{TRUE}), or, use the system's
local time (\code{FALSE}).}

\item{add_tz}{Should the time zone (as an offset from UTC) be provided? If
\code{TRUE} (the default) then the UTC offset will be either provided as
\verb{<time>Z} (if \code{utc_time = TRUE}) or \verb{<time>(+/-)hhmm}.}
}
\description{
This function helps to affix the current date-time to a filename. This is
useful when writing \emph{agent} and/or \emph{informant} objects to disk as part of a
continuous process. The date-time string can be based on the current UTC time
or the local system time. The date can be affixed either to the end of the
filename (before the file extension) or at the beginning with a customizable
delimiter.
}
\seealso{
The \code{\link[=affix_date]{affix_date()}} function provides the same features except it
produces a date string by default.
}
