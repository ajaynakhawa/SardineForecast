% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ref.r
\name{ref}
\alias{ref}
\title{Create counter for figure and tables}
\usage{
ref(useName, pre = "", app = "")
}
\arguments{
\item{useName}{name of the label.  Must be of the form type:name, like fig:spawners}

\item{pre}{tag to put in front of number.  ref("fig:foo", pre="A") gives A1}

\item{app}{tag to put at end of number}
}
\value{
The number of the figure or table with pre or app added if needed.
}
\description{
Used in the R markdown files for figure and table counters.
}
\details{
Can be used anywhere in text or captions.  First time it is called, the counter .refctr is given a number associated with the name and the number returned.  Next time it is called, it checks if the name exists.  If so, it returns its number.  Note, after the first time ref is called, pre and app are ignored.

Use like so `r ref("fig:1a")` whereever you need the number.

Note you need to define the environment of the rmarkdown file that is calling ref().  Add this at the top of the Rmd file
if(!exists(".rmdenvir")) .rmdenvir = environment()
.rmdenvir and .refctr will be created in the Rmd environment
}
