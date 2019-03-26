\name{calorias.diarias}
\alias{calorias.diarias}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{calorias.diarias funcion}
\description{calorias diarias necesarias}
\usage{
calorias.diarias(n1, n2, n3, n4, n5)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{value}{n1 and value n2 and value n3 and value n4 and value n5}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{Borja y Jorge}
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
Redondeo de las fórmulas de Harris-Benedict por Mifflin et al. Fuente: Mifflin et al., 1990
  w = Peso en kilogramos 
  s= Estatura en centímetros 
  a = edad en años 
  
  Hombres REE = 10 w + 6.25 s -5 a + 5 
  Mujeres REE = REE = 10 w + 6.25 s - 5 a - 161 
  
Factor de actividad de acuerdo con Método Harris-Benedict
  1-Sedentario. Factor x 1.2 
  2-Ligero. Factor x 1.375
  3-Activo. Factor x 1.55
  4-Muy activo. Factor x 1.725
  5-Extremo. Factor x 1.9
  
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{calorias.diarias}
