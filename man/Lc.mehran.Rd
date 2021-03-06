\name{Lc.mehran}
\alias{Lc.mehran}
\title{Mehran Bounds For Lorenz Curves}
\description{
 Computes the Mehran bounds for a Lorenz curve of grouped data}
\usage{
Lc.mehran(x,n)
}
\arguments{
 \item{x}{vector of class means.}
 \item{n}{vector of class frequencies.}
}
\value{An object of class \code{"Lc"}, but containing only
  \code{p} and \code{L}.}
\references{F Mehran: Bounds on the Gini Index Based on Observed Points of the Lorenz Curve, 1975, JASA 70, 64-66. }

\seealso{\code{\link{Lc}}, \code{\link{plot.Lc}}, \code{\link{plot.theorLc}}}

\examples{
# income distribution of the USA in 1968 (in 10 classes)
# x vector of class means, n vector of class frequencies
x <- c(541, 1463, 2445, 3438, 4437, 5401, 6392, 8304, 11904, 22261)
n <- c(482, 825, 722, 690, 661, 760, 745, 2140, 1911, 1024)

# compute minimal Lorenz curve (= no inequality in each group)
Lc.min <- Lc(x, n=n)
# compute maximal Lorenz curve (limits of Mehran)
Lc.max <- Lc.mehran(x,n)
# plot both Lorenz curves in one plot
plot(Lc.min)
lines(Lc.max, col=4)

# add the theoretic Lorenz curve of a Lognormal-distribution with variance 0.78
lines(Lc.lognorm, parameter=0.78)
# add the theoretic Lorenz curve of a Dagum-distribution
lines(Lc.dagum, parameter=c(3.4,2.6))
}
\keyword{misc}

