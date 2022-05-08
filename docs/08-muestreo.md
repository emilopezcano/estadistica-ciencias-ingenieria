# (PART) Inferencia estadística {-}



# Muestreo y estimación {#muestreo}


## Muestreo Estadístico

El muestreo estadístico es el mecanismo por el que se selecciona la muestra a partir de una población. A grandes rasgos, hay que determinar cómo se seleccionan los elementos de la muestra y cuántos se seleccionan. Este tamaño muestral lo representamos por $n$, y a menudo se habla de "la $n$" del experimento (o del estudio, en general). El tamaño de la muestra lo determina la característica que queremos estudiar, que se representada por una **variable aleatoria**. En función del modelo de distribución de probabilidad que sigue la variable aleatoria, se determina el tamaño de la muestra.


:::{.rmdcafe data-latex=""}
Es importante diferenciar las muestras estadísticas de las muestras "biológicas" o de materiales. A veces estarán relacionadas, pero otras veces serán cosas totalmente distintas y no relacionadas.
:::


El muestreo es muy importante en cualquier estudio estadístico para poder extraer
conclusiones válidas y tomar decisiones sobre la poblaciónrespaldadas por los datos. El aspecto
más importante es que tienen que ser muestras representativas de la la población.
Para asegurar esta representatividad, utilizamos métodos probabilísticos, de forma
que los sesgos (falta de representatividad) que se produzcan sean achacables 
únicamente al azar, y no a otro tipo de cuestiones.

No siempre realizamos estudios estadísticos basados en una muestra extraída ad-hoc, sino
que analizamos datos disponibles que se han recogido o están disponibles sin
realizar un muestreo. Con estos datos podemos hacer estudios observacionales
(frente a los experimentos diseñados) siempre teniendo en cuenta que puede
haber sesgos y la muestra no represente a la población. Por otra parte, 
muchas veces no es posible hacer un muestreo completamente aleatorizado,
y entonces podemos recurrir a muestreos cuasi-probabilísticos. En cualquier
caso, hay que intentar evitar a toda costa las muestras "de conveniencia",
y plantearnos en todo momento si podemos considerar que es representativa
de la población.


:::{.rmdinfo data-latex=""}

La muestra debe **representar** a la población.

:::

## Muestreo probabilístico

Entre los muestreos probabilísticos, podemos elegir entre muestreo aleatorio simple (MAS), muestreo estratificado, muestreo por conglomerados y muestreo sistemático. Salvo en este último, en los demás necesitamos una enumeración e identificación de los individuos de la población. En el muestreo sistemático, necesitamos solamente un orden.

El **muestreo aleatorio simple** es el más sencillo. Todos los elementos de la población tienen la misma probabilidad de pertenecer a la muestra. Requiere tener identificados de alguna manera a los individuos de la población, y es adecuado en poblaciones pequeñas, homogéneas, en las que no hay patrones conocidos. 


:::{.rmdejemplo data-latex=""}

Se dispone del listado de depuradoras de agua de una región y se quiere estudiar alguna
característica específica de instalaciones sin hacer análisis a todas las depuradoras. Se seleccionan
al azar un número de depuradoras determinado.

:::

El **muestreo estratificado** es más adecuado en poblaciones no homogéneas. 
Se conocen grupos dentro de la población, que son diferentes entre ellos, 
pero las subpoblaciones dentro de los grupos son homogéneas. Además, se 
conoce algo sobre la distribución de la característica en cada grupo.
Entonces se obtiene una muestra aleatoria de cada uno de los grupos (estratos).
Este tipo de muestreo no es apropiado en poblaciones pequeñas.


:::{.rmdejemplo data-latex=""}

Si estamos estudiando una población en la que se sabe que la variable de interés se comporta de forma diferente en distintas CCAA, se consideran estos  estratos y se obtiene una submuestra de cada uno (por ejemplo en el caso anterior de las depuradoras).
:::


El **muestreo por conglomerados** también asume que se dispone de grupos en la población, 
pero son homogéneos entre sí (se parecen). 
Pero dentro de cada grupo la variable se comporta de forma heterogénea.
Puede existir una jerarquía (conglomerados dentro de los conglomerados).
Entonces se obtiene una muestra de grupos (no de individuos). 
Después se pueden estudiar TODOS los individuos de los grupos de la muestra, o aplicar otro muestreo dentro (por ejemplo, estratificado). Es adecuado cuando es más fácil llegar a todos los elementos de un grupo.


:::{.rmdejemplo data-latex=""}

Se estudian hábitos de higiene en las familias en una ciudad. Se divide en barrios y se elige muestra de barrios. Dentro de cada barrio, se eligen aleatoriamente edificios, y se estudian todas las familias del edificio

:::

No siempre tenemos la lista de elementos, como en los casos anteriores. Pero sí podemos "ordenarlos" de alguna manera,
por ejemplo, conforme llegan muestras (en el sentido biológico) a un laboratorio. Entonces podemos
realizar un **muestreo sistemático**. Para poder usarlo es importante estar 
seguro de que la característica no depende del orden.
Entonces, se elige un punto de partida (idealmente, aleatorio) y se toman elementos separados a distancia $k$ (coeficiente de elevación). Se puede aplicar en vez de MAS en cualquiera de las situaciones anteriores.


:::{.rmdejemplo data-latex=""}

En la producción de un fertilizante en bolas, se tomarán muestras de 10 bolas cada hora. Se elige aleatoriamente un instante la primera hora, y a partir de ahí cada 60 minutos se elegirán las siguientes 10 bolas.
:::


Cuando no es posible hacer un muestreo probabilístico, algunas veces pueden ser válidos 
muestreos no probabilísticos. Entonces podremos hacer estudios observacionales,
e incluso aplicar técnicas de inferencia estadística, pero con ciertas precauciones.
Las conclusiones pueden no ser válidas para toda la población, y hay que tenerlo en cuenta.
Hay que procurar que, al menos cualitativamente, podamos presumir que la muestra representa a la población,
o al menos no tener evidencias de que no es así. Los estudios observacionales (sobre datos que están ahí) son también muy valiosos. Si estos estudios nos dan luz sobre algo suficientemente importante, puede merecer la pena diseñar un experimento para confirmar las conclusiones.


## Parámetros y estimadores

Recordemos que los parámetros se definen sobre una Variable Aleatoria $X$ de la **población**. Son **Desconocidos**, pero siguen un modelo de distribución de probabilidad teórica de la variable aleatoria subyacente. En general, los queremos **estimar** mediante inferencia paramétrica. Los estadísticos son valores que se calculan con los datos de la **muestra**. En cada muestra serán distintos, es decir, habrá variabilidad, y por tanto son variables aleatorias, que siguen también una **distribución** de probabilidad. Esa distribución de probabilidad del estadístico es lo que llamamos distribución en el muestreo.



:::{.rmdejemplo data-latex=""}

$\mu, \sigma^2 \text{ y }  \pi$ representan los parámetros media, varianza y proporción de una determinada característica en la población. Son desconocidos, y dependen de la distribución de la característica en estudio. 
$\bar x, s^2 \text{ y } p$ son estadísticos calculados con los $n$ datos de una muestra.
:::

Un estimador es un estadístico mediante el cual estimamos el valor de un 
parámetro. Esa estimación estará sujeta a un error, que se puede cuantificar si se ha seguido un muestreo probabilístico. El error va a depender de las propiedades del estimador y del tamaño de la muestra.
Representamos con $\hat \mu = \bar x$ que la media muestral $\bar x$ es un estimador de la media poblacional $\mu$


:::{.rmdejemplo data-latex=""}
* Proporción: $\hat \pi = p$
* Media: $\hat \mu = \bar x$ 
* Varianza: $\hat \sigma^2 = s^2 = \frac{1}{n-1}\sum x_i^2 - \bar x^2$
:::


Para determinar qué estimador utilizar para un parámetro, se estudia su 
distribución en el muestreo. Las siguientes son propiedades deseables de los estimadores:

* **Insesgado**: Que la esperanza del estimador sea igual al verdadero valor del parámetro.

* **Eficiente**: Que tenga la mínima varianza posible.

* **Consistente**: Que tenga menor variabilidad a mayor tamaño de muestra.



Estimación y contrastes


Estimadores puntuales (medias, proporciones, varianzas)

Estimación por intervalos

Estimación no paramétrica

Inferencia Bayesiana*


