% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotAbundanceVsNoisetypes.R
\name{plotAbundanceVsNoisetypes}
\alias{plotAbundanceVsNoisetypes}
\title{Plot taxon abundances classified by noise type}
\usage{
plotAbundanceVsNoisetypes(x, nt, sig = FALSE)
}
\arguments{
\item{x}{a matrix with taxa as rows and samples as columns}

\item{nt}{the noisetypes object generated for the matrix}

\item{sig}{assess significance of difference between mean abundances with ANOVA and Tukey's post-hoc test}
}
\description{
A box plot with taxon abundances is drawn for each noise type.
}
