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


## Distribución en el muestreo de los principales estadísticos

### Media muestral

Sea la variable aleatoria $X$ con $E[X] = \mu$ y $V[X] = \sigma^2$. Obtenemos muestras de tamaño $n$: $x_1, \ldots, x_i, \ldots, x_n$. Usamos la media muestral como estimador de la media poblacional:

$$\hat  \mu = \bar x = \frac 1 n \sum\limits_1^n x_i.$$

Entonces $\overline X_{\{n\}}$ es la variable aleatoria "media de la característica $X$ en muestras de tamaño $n$", y por
las propieadades de la esperanza y la varianza:

* $E[\overline X_{\{n\}}]$ = $\mu$,

* $V[\overline X_{\{n\}}] = \frac{\sigma^2}{n}$.


### Teorema Central del Límite


Sean $X_1, \ldots, X_n$ variables aleatorias independientes e idénticamente distribuidas, con
media $\mu$ y varianza $\sigma^2$. Y sea $\overline X$ el promedio de esas variables aleatorias:

$$\overline X = \frac 1 n \sum\limits_{i=1}^n X_i$$

Entonces, para $n$ suficientemente grande, la variable aleatoria $\overline X_{\{n\}}$ sigue una distribución normal de media $\mu$ y varianza $\frac{\sigma^2}{n}$:

$$\overline X_{\{n\}} \sim N\left(\mu; \frac{\sigma}{\sqrt{n}} \right)$$

El Teorema Central del Límite nos va a permitir hacer inferencia de cualquier variable aleatoria $X$ utilizando las propiedades de la distribución normal.


### Varianza muestral

La varianza poblacional, calculada con $n$ en el denominador, es un estimador **sesgado**:

$$E\left[\frac 1 n \sum (x_i-\bar x)^2 \right] = \frac{n}{n-1}\sigma^2.$$

Por eso usamos la "cuasivarianza" o varianza muestral:

$$\hat \sigma^2 = s^2 = \frac{ 1}{ n-1} \sum (x_i-\bar x)^2$$
Se cumple que:

* $E[s^2] = \sigma^2$
* $V[s^2] = \frac{2\sigma^4}{n-1}$

Para determinar la distribución en el muestreo de la varianza muestral, primero tenemos
que definir la distribución $\chi^2$, que tiene un único parámetro, los grados de libertad $n$.
Se define como la suma de $n$ variables aleatorias normales independientes estandarizadas al cuadrado:

$$\chi^2_n = Z_1^2 + \ldots + Z_n^2;\quad E[\chi^2_{n}]=n; \quad V[\chi^2_{n}]=2n$$

Se cumple, independientemente de la distribución de $X$, que:

$$\frac{(n-1)s^2}{\sigma^2}\sim \chi^2_{n-1},$$
que es la distribución que usaremos para hacer inferencia sobre la varianza de la población.

### Proporción muestral

Sea la variable aleatoria $X:$ Número de elementos de la muestra de tamaño $n$ que presentan la característica en estudio.
Entonces al extraer la muestra, se obtienen valores $x \in \{1, \ldots, n\}$, y el estadístico proporción muestral será $p = \frac x n$. Entonces, la probabilidad de que el parámetro $\pi$ tome un valor determinado $p=\frac x n$, es equivalente a la probabilidad de que la variable $X$ tome el valor $x$:

$$P[\pi = p] = P\left [\pi = \frac x n\right] = P[X = x]$$

Por tanto, la distribución exacta en el muestreo de $\hat \pi = p$ es una Binomial de parámetros $n$ y $\pi$.

Como la binomial es una suma de distribuciones de Bernoulli, entonces $p$ es una media: $p=\frac X n = \frac{\sum X_i}{n}$, y por el Teorema Central del Límite: 

$$P = \frac{X}{n}\approx N\left(\pi, \sqrt{\frac{\pi(1-\pi)}{n}}\right).$$
También se puede definir la distribución en el muestreo del número de elementos de la muestra con la característica, $X$:

$$X=np \sim N(n\pi, \sqrt{n\pi(1-\pi))}.$$

## Tamaño muestral para estimar la media

Recordemos que no conocemos los parámetros de la población, por tanto necesitamos una forma de estimar el error que estamos cometiendo. Definimos entonces el error estándar de la media (_Standard Error_, SE) como: 

$$SE=\frac{s}{\sqrt{n}}$$

como medida de dispersión del promedio muestral. A veces se usa error típico como sinónimo. 


:::{.rmdinfo data-latex=""}

A mayor tamaño muestral, menor variabilidad, y menor error en las estimaciones.

:::



El error depende del tamaño muestral, y también podemos determinar cuál debe ser 
el tamaño de la muestra $n$ para cometer, como máximo, un determinado error $e$.
Y esto lo haremos con una cierta **confianza**. 
En los métodos paramétricos, este nivel de confianza tiene que ver con el **muestreo**.
Indica la proporción de veces que cometo un error inferior a $e$ si repito el muestreo 
un número grande de veces. Se suele expresar como porcentaje, por ejemplo 95%, 99%, etc.


Definimos el **nivel de significación** $\alpha$ como el complementario del nivel de confianza. Por ejemplo, 
para un nivel de confianza del 95% tendríamos un nivel de significación de 0.05. Entonces, para la media de una variable aleatoria $X$ que sigue una distribución normal, si tipificamos:

$$\frac{\overline X- \mu}{\frac{\sigma}{\sqrt{n}}}\sim N(0; 1).$$

Entonces para cumplir la confianza indicada anteriormente, se debe dar la siguiente condición:

\begin{equation} 
  P\left[-z_{\frac{\alpha}{2}}<\frac{\overline x- \mu}{\frac{\sigma}{\sqrt{n}}}<z_{\frac{\alpha}{2}}\right] = 1-\alpha,
  (\#eq:n1)
\end{equation} 

donde $z_{\frac{\alpha}{2}}$ es el cuantil de la distribución normal estandarizada para una probabilidad de $1-\frac{\alpha}{2}$.


:::{.rmdinfo data-latex=""}
Normalmente se omite en $z_{\frac{\alpha}{2}}$ el símbolo "$1-$" por comodidad al ser simétricos: $z_\frac \alpha 2= - z_{1-\frac \alpha 2}$.

:::


```r
mu <- 0
sig <- 1
a <- -1.96
b <- -5
curve(dnorm(x, mean = mu),
      xlim = c(mu-4*sig, mu+4*sig),
      ylab = "",
      col = "steelblue",
      lwd = 2,
      axes = FALSE,
      xlab = "")
axis(1, col = gray(0.5), pos = 0, 
     at = c(   -10,   b,    a,   0,  -a, -b,  10),
     labels = c(" ", "-b", expression(-z[alpha/2]), "0", 
                expression(z[alpha/2]), "b", " "), 
     padj = 1)
axis(2, las = 2, pos = 0, col = gray(0.9),
     at = c(dnorm(c(-1), mean = 3), 10),
     labels = c("", ""))

xx <- c(seq(a, b, length.out = 100))
polygon(x = c(xx, b, rev(xx), a),
        y = c(0, dnorm(xx, mean = mu), rep(0, 101)), col = gray(0.75),
        lty = 3)

xx <- c(seq(-a, -b, length.out = 100))
polygon(x = c(xx, -b, rev(xx), -a),
        y = c(0, dnorm(xx, mean = mu), rep(0, 101)), col = gray(0.75),
        lty = 3)

text(0, 0.1, expression(1-alpha),cex=2)
```

<img src="08-muestreo_files/figure-html/unnamed-chunk-1-1.png" width="60%" style="display: block; margin: auto;" />


:::{.rmdejemplo data-latex=""}

Para un nivel de significación $\alpha = 0.05$, $z_{\frac{\alpha}{2}} \simeq 1.96$. Podemos encontrar este valor en las tablas o con más precisión usando la siguiente expresión de R:

````
qnorm(0.95)
````

:::

Despejando $\mu$ en la ecuación \@ref(eq:n1):

$$P\left[\overline x-z_{\frac{\alpha}{2}} \frac{\sigma}{\sqrt{n}}< \mu < \overline x+z_{\frac{\alpha}{2}} \frac{\sigma}{\sqrt{n}}\right] = 1-\alpha.$$

De aquí, el error que estoy cometiendo un $100 \times (1-\alpha)$% de las veces al estimar la media $\mu$ con la media muestral $\bar x$ y muestras de tamaño $n$ es:

$$e=z_{\frac{\alpha}{2}} \frac{\sigma}{\sqrt{n}},$$

de donde despejando $n$, tenemos una expresión general para calcular el tamaño de muestra:

$$n = \frac{z_{\frac{\alpha}{2}}^2 \sigma^2}{e^2}.$$

Esta expresión nos sirve tal cual para calcular el tamaño de muestra para estimar la
media poblacional de una variable aleatoria normal con **varianza conocida** $\sigma^2$,
y tamaño poblacional grande. Si el tamaño de la población es pequeño y conocido, $N$, entonces
el tamaño de la muestra se calcula con esta otra fórmula:

$$n = \frac{N\cdot z_{\frac{\alpha}{2}}^2 \cdot \sigma^2}{e^2\cdot (N-1)+ z_{\frac{\alpha}{2}}^2 \cdot \sigma^2},$$

Si la varianza es desconocida, sustituimos $\sigma$ por $s$. Si no tenemos $s$, se estima el caso más desfavorable.


:::{.rmdejemplo data-latex=""}
Queremos estimar la valoración que hacen los clientes de un determinado servicio energético en una puntuación de 0 a 10. El caso más desfavorable (para el tamaño de la varianza) sería que la mitad de los clientes contestaran un 0 y la otra mitad un 10. O, equivalentemente, que contestara un cliente con un cero y otro con un 10. Entonces, la varianza $s^2$ sería 50. Y el tamaño de muestra mínimo para estimar la puntuación media en una población grande y no equivocarnos en más de $e = 1$ punto sería de $n =136$ clientes.
:::


```r
var(c(0,10))
#> [1] 50
(qnorm(0.95)^2*50)/(1^2)
#> [1] 135.2772
```

## Tamaño muestral para estimar la proporción

Asumimos que serán muestras grandes, y aplicando la aproximación de la distribución binomial por la normal, tenemos que para poblaciones grandes:

$$n = \frac{z_{\frac{\alpha}{2}}^2 \cdot \pi\cdot(1-\pi)}{e^2},$$
y para poblaciones pequeñas de tamaño $N$:

$$n = \frac{N\cdot z_{\frac{\alpha}{2}}^2\cdot \pi\cdot(1-\pi)}{e^2\cdot (N-1)+ z_{\frac{\alpha}{2}}^2 \cdot \pi\cdot(1-\pi)}.$$

Si no hay información sobre el parámetro $\pi$, se toma el caso más desfavorable, que siempre es: $\pi = (1-\pi) = 0{,}5.$


## Estimación puntual


Estimadores puntuales (medias, proporciones, varianzas)

## Estimación por intervalos


## Estimación no paramétrica

## Inferencia Bayesiana*


