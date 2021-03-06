% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_informant_report.R
\name{get_informant_report}
\alias{get_informant_report}
\title{Get a table information report from an \emph{informant} object}
\usage{
get_informant_report(informant, size = "standard", lang = NULL, locale = NULL)
}
\arguments{
\item{informant}{An informant object of class \code{ptblank_informant}.}

\item{size}{The size of the display table, which can be either \code{"standard"}
(the default, with a width of 875px) or \code{"small"} (width of 575px).}

\item{lang}{The language to use for the \emph{information report} (a summary table
that provides the validation plan and the results from the interrogation.
By default, \code{NULL} will create English (\code{"en"}) text. Other options include
French (\code{"fr"}), German (\code{"de"}), Italian (\code{"it"}), Spanish (\code{"es"}),
Portuguese, (\code{"pt"}), Chinese (\code{"zh"}), and Russian (\code{"ru"}). This \code{lang}
option will override any previously set lang value (e.g., by the
\code{\link[=create_agent]{create_agent()}} call).}

\item{locale}{An optional locale ID to use for formatting values in the
\emph{information report} summary table according the locale's rules. Examples
include \code{"en_US"} for English (United States) and \code{"fr_FR"} for French
(France); more simply, this can be a language identifier without a country
designation, like \code{"es"} for Spanish (Spain, same as \code{"es_ES"}). This
\code{locale} option will override any previously set locale value (e.g., by the
\code{\link[=create_agent]{create_agent()}} call).}
}
\value{
A \strong{gt} table object.
}
\description{
We can get a table information report from an informant object that's
generated by the \code{\link[=create_informant]{create_informant()}} function. The report is provided as a
\strong{gt} based display table. The amount of information shown depends on the
extent of that added via the use of the \verb{info_*()} functions or through
direct editing of a \strong{pointblank} YAML file (an informant can be written
to \strong{pointblank} YAML with \verb{yaml_write(informant = <informant>, ...)}).
}
\section{Function ID}{

6-2
}

\examples{
# Generate an informant object using
# the `small_table` dataset
informant <- create_informant(small_table)

# This function creates some information
# without any extra help by profiling
# the supplied table object; it adds
# the sections 'table' and columns' and
# we can print the object to see the
# table information report

# Alternatively, we can get the same report
# by using `get_informant_report()`
report <- get_informant_report(informant)
class(report)

}
\seealso{
Other Incorporate and Report: 
\code{\link{incorporate}()}
}
\concept{Incorporate and Report}
