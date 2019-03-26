\name{calorias.diarias}
\alias{calorias.diarias}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Calorias diarias}
\description{calorias diarias necesarias para una persona en funcion de su sexo, edad, peso, altura y actividad fisica}
\usage{
calorias.diarias(w, s, a)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{value}{w = Peso en kilogramos,  s= Estatura en centímetros, a = edad en años }
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
\author{Borja y Jorge  -- U-TAD -- 2019}
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\Formulas y parametros{
Redondeo de las formulas de Harris-Benedict por Mifflin. 1990
  w = Peso en kilogramos 
  s= Estatura en centímetros 
  a = edad en años 
  
  Hombres REE = 10 w + 6.25 s -5 a + 5 
  Mujeres REE = REE = 10 w + 6.25 s - 5 a - 161 
  
Factor de actividad de acuerdo con Metodo Harris-Benedict
  1-Sedentario. Factor x 1.2 
  2-Ligero. Factor x 1.375
  3-Activo. Factor x 1.55
  4-Muy activo. Factor x 1.725
  5-Extremo. Factor x 1.9
  
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{calorias.diarias}
