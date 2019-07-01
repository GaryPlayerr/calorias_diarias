\name{alimento.composicion}

\alias{alimento.composicion}

%- Also NEED an '\alias' for EACH other topic documented here.

\title{Alimentos composicion}

\description{Determinar para un determinado alimento las calorias procedentes de hidratos de carbono, proteina y grasa, asi como los gramos de hidratos de carbono}

\usage{

alimento.composicion(BBDD alimentos SQLite)

}

%- maybe also 'usage' for other objects documented here.

\arguments{

\item{value}{aceites_grasas, Aves, Caza, Cerdo, Cereales, Cordero, Dulces, Embutidos, Frutos_frescos, Frutos_secos, Huevos, Lacteos, Leguminosas, Pescados, Ternera, Tuberculos_hortalizas, Vaca}

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

\examples{

Se introduce el alimento para ir a buscar a la BBDD correspondiente:
Tipo de alimemento(CEREALES, LEGUMINOSAS, TUBERCULOS_HORTALIZAS, FRUTOS_FRESCOS,FRUTOS_SECOS, 
 LACTEOS, HUEVOS, DULCES, ACEITES_GRASAS, PESCADOS, CERDO, CORDERO, TERNERA, VACA, EMBUTIDOS, AVES, CAZA):
Por ejmplo CEREALES, siempre en MAYUSCULAS.

Posteriormente se introduce un patron de busqueda para ver todas las comidas que contienen ese alimento.
Cereales patron de busqueda en MAYUSCULAS: por ejemplo ARROZ
Introducimos la cantidad en gramos. Cantidad en gramos? por ejmplo 80
Obtenemos los siguienbtes resultados, por ejemplo:

	Cereales	         Estado	    Proteina_calorias	Grasas_calorias	Carbohidratos_calorias	FII_food_insulin_index
1	ARROZ	             DESCASAC.	     26.24	           4.32	              246.4	                     77
2	ARROZ	             HERVIDO	      7.36	           1.44	               99.52	                   31.1
3	ARROZ	             PAELLA	      22.08	           2.88	              238.4	                   74.5
4	ALMIDON DE ARROZ     GRANO	      2.56		 272.64	               85.2
5	HARINA DE ARROZ	     GRANO	      23.68	           4.32	              252.8	                     79

FII (food insuline index): tiene en cuenta las proteinas grasas y carbohidratos. Son deseables valores bajos para que no se produjan incrementos rapidos de azucar en sangre.

% Add one or more standard keywords, see file 'KEYWORDS' in the

% R documentation directory.

\keyword{alimento.composicion}
