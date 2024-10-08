% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DataAccess.R
\name{tableDataAccess}
\alias{tableDataAccess}
\title{Differentially Private Contingency Table Data Access Function}
\usage{
tableDataAccess(..., mechanism = "Laplace")
}
\arguments{
\item{...}{Vectors of data from which to create the contingency table.}

\item{mechanism}{String indicating which mechanism to use for differential
privacy. If the 'Laplace' mechanism is chosen, l1 sensitivities are
returned. If the 'Gaussian' or 'analytic' mechanisms are chosen, l2
sensitivities are returned.}
}
\value{
List of the true contingency table and the sensitivities calculated
based on bounded and unbounded differential privacy.
}
\description{
This function performs the data access step in the computation of a
differentially private contingency table. The true values are computed using
\code{\link[base]{table}},while the sensitivities are calculated based on
bounded and unbounded differential privacy \insertCite{Kifer2011}{DPpack}
according to the theoretical values \insertCite{Liu2019b}{DPpack}.
}
\examples{
x <- MASS::Cars93$Type;
y <- MASS::Cars93$Origin;
tableDataAccess(x, y, mechanism='Laplace')

}
\references{
\insertRef{Liu2019b}{DPpack}

\insertRef{Kifer2011}{DPpack}
}
\keyword{internal}
