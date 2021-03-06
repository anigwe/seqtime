% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generateA.R
\name{generateA}
\alias{generateA}
\title{Generate an interaction matrix}
\usage{
generateA(N = 100, type = "random", pep = 50, d = -0.5,
  min.strength = -0.5, max.strength = 0.5, c = 0.02,
  ignore.c = FALSE, negedge.symm = FALSE, clique.size = 5,
  groups = c(), intra.group.strength = 0.5,
  inter.group.strength = NA)
}
\arguments{
\item{N}{number of species}

\item{type}{random (sample a uniform distribution), klemm (generate a Klemm-Eguiluz matrix) or empty (zero everywhere, except for diagonal which is set to d)}

\item{pep}{desired positive edge percentage (only for klemm)}

\item{d}{diagonal values (should be negative)}

\item{min.strength}{random: minimal off-diagonal interaction strength (only for random)}

\item{max.strength}{random: maximal off-diagonal interaction strength, klemm: maximal absolute off-diagonal interaction strength}

\item{c}{desired connectance (interaction probability)}

\item{ignore.c}{do not adjust connectance}

\item{negedge.symm}{set symmetric negative interactions (only for klemm)}

\item{clique.size}{modularity parameter (only for klemm)}

\item{groups}{vector of group memberships for each species, assign NA if species does not belong to any group (only for random)}

\item{intra.group.strength}{interaction strength between members of the same group}

\item{inter.group.strength}{interaction strength between members of different groups (if not defined, will be assigned randomly)}
}
\value{
the interaction matrix
}
\description{
Generate an interaction matrix, either randomly from a uniform distribution or
using Klemm-Eguiluz algorithm to generate a modular and scale-free interaction matrix.
}
\examples{
klemm=generateA(N=10,type="klemm",c=0.5)
groups=c(rep(NA,5),rep(1,10),rep(2,5),rep(3,10),rep(4,10))
Agroup=generateA(N=40,groups=groups,c=0.5,intra.group.strength=0.1,inter.group.strength=-0.5, d=-1)
}
\references{
Klemm & Eguiluz, Growing Scale-Free Networks with Small World Behavior \url{http://arxiv.org/pdf/cond-mat/0107607v1.pdf}
}
