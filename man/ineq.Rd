\name{ineq}
\alias{ineq}
\alias{Gini}
\alias{RS}
\alias{Atkinson}
\alias{Theil}
\alias{Kolm}
\alias{var.coeff}
\alias{entropy}
\title{Inequality Measures}
\description{
 computes the inequality within a vector according to the
specified inequality measure }
\usage{
ineq(x,parameter=1,type=c("Gini","RS","Atkinson","Theil","Kolm","var","square.var","entropy"))

Gini(x)
RS(x)
Atkinson(x, parameter=0.5) 
Theil(x, parameter=0)
Kolm(x, parameter=1)
var.coeff(x, square=F)
entropy(x, parameter=0.5)
}
\arguments{
 \item{x}{a vector containing at least non-negative elements}
\item{parameter}{parameter of the inequality measure}
\item{type}{character string giving the measure used to compute inequality.
  must be one of the strings in the default argument (the first character
  is sufficient). defaults to "Gini".} }
\details{\code{ineq} is just a wrapper for the inequality measures \code{Gini},
         \code{RS}, \code{Atkinson}, \code{Theil}, \code{Kolm},\code{var.coeff},
         \code{entropy}.

         \code{Gini} is the Gini coefficient, \code{RS} is the the Ricci-Schutz
         coefficient (also called Pietra�s measure), \code{Atkinson} gives
         Atkinson�s measure and \code{Kolm} computes Kolm�s measure.

         If the parameter in \code{Theil} is 0 Theil�s entropy measure is
         computed, for every other value Theil�s second measure is
         computed.

         \code{ineq(x, type="var")} and \code{var.coeff(x)} respectively
         compute the coefficient of variation, while
         \code{ineq(x,type="square.var")} and \code{var.coeff(x, square=T)}
         compute the squared coefficient of variation.

         \code{entropy} computes the generalized entropy, which is for
         parameter 1 equal to Theil�s entropy coefficient and for parameter
         0 equal to the second measure of Theil.
}
\value{
  the value of the inequality measure
}
\references{F A Cowell: Measurement of Inequality, 2000, in A B Atkinson / F Bourguignon (Eds): Handbook of Income Distribution, Amsterdam,

F A Cowell: Measuring Inequality, 1995 Prentice Hall/Harvester Wheatshef,

Marshall / Olkin: Inequalities: Theory of Majorization and Its
Applications, New York 1979 (Academic Press).}
\author{Achim Zeileis \email{zeileis@ci.tuwien.ac.at}}

\seealso{\code{\link{conc}}, \code{\link{pov}}}

\examples{
# generate vector (of incomes)
x <- c(541, 1463, 2445, 3438, 4437, 5401, 6392, 8304, 11904, 22261)
# compute Gini coefficient
ineq(x)
# compute Atkinson coefficient with parameter=0.5
ineq(x, parameter=0.5, type="Atkinson")
}
\keyword{}
