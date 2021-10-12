# (APPENDIX) Apéndices {-} 

# Símbolos, abreviaturas y acrónimos

## Acrónimos

Acrónimo      | Descripción
------------- | -------------
SPC           | Statistical Process Control


## Letras griegas

Letra         | Se lee
------------- | -------------
$\alpha$      | alfa
$\beta$       | beta
$\gamma$      | gamma
$\Gamma$      | Gamma$^*$
$\lambda$     | lambda
$\eta$        | eta
$\mu$         | mu
$\omega$      | omega
$\Omega$      | Omega$^*$
$\sigma$      | sigma
$\Sigma$      | Sigma$^*$
$\rho$        | ro
$\theta$      | zeta (_theta_, teta)
$\xi$         | xi
$\chi$        | chi (o _ji_)
$\pi$         | pi
$\varepsilon$ | épsilon

$^*$ Mayúsculas

## Símbolos

Símbolo                    | Se lee
---------------------------| -------------------------------
$\emptyset$                | Conjunto vacío o suceso imposible
$\aleph$                   | Aleph
$\wp$                      | Probabilidad (como función) 
$:$                        | Tal que
$P(\cdot)$                 | Probabilidad de · (sucesos)
$P[\cdot]$                 | Probabilidad de · (variables aleatorias)
$E[\cdot]$                 | Esperanza de ·
$\cdot$                    | _lo que sea_ (representa cualquier objeto matemático)
$|$                        | Condicionado a
$\sum$                     | Sumatorio
$\sum\limits_{i=1}^n$      | Sumatorio desde $i$ igual a uno hasta $n$
$\prod$                    | Producto
$\prod\limits_{i=1}^n$     | Producto desde $i$ igual a uno hasta $n$
$\forall$                  | Para todo
$\in$                      | Pertenece/perteneciente
$\exists$                  | Existe
$\implies$                 | Implica/entonces
$\partial$                 | Derivada parcial
$\simeq$                   | Aproximadamente igual^[En este libro se usa sobre todo para indicar que se ha redondeado un número decimal]
$\approx$                  | Aproximadamente^[En este libro se puede utilizar para tomar el entero superior o inferior según el contexto]
$\equiv$                   | Equivalente
$\mathbb{R}$               | Conjunto de los números reales
$\cup$                     | Unión
$\cap$                     | Intersección
$\subset$                  | Incluido
$\subseteq$                | Incluido o igual


# Tablas estadísticas {#tablas}

## Distribución normal


La siguiente tabla contiene la probabilidad de la cola inferior de la distribución normal estándar $Z\sim N(0;1)$, 
es decir $F(z)=P[Z\leq z].$. 

<img src="91-apendices_files/figure-html/unnamed-chunk-2-1.png" width="70%" />


|   z|   0.00|   0.01|   0.02|   0.03|   0.04|   0.05|   0.06|   0.07|   0.08|   0.09|
|---:|------:|------:|------:|------:|------:|------:|------:|------:|------:|------:|
| 0.0| 0.5000| 0.5040| 0.5080| 0.5120| 0.5160| 0.5199| 0.5239| 0.5279| 0.5319| 0.5359|
| 0.1| 0.5398| 0.5438| 0.5478| 0.5517| 0.5557| 0.5596| 0.5636| 0.5675| 0.5714| 0.5753|
| 0.2| 0.5793| 0.5832| 0.5871| 0.5910| 0.5948| 0.5987| 0.6026| 0.6064| 0.6103| 0.6141|
| 0.3| 0.6179| 0.6217| 0.6255| 0.6293| 0.6331| 0.6368| 0.6406| 0.6443| 0.6480| 0.6517|
| 0.4| 0.6554| 0.6591| 0.6628| 0.6664| 0.6700| 0.6736| 0.6772| 0.6808| 0.6844| 0.6879|
| 0.5| 0.6915| 0.6950| 0.6985| 0.7019| 0.7054| 0.7088| 0.7123| 0.7157| 0.7190| 0.7224|
| 0.6| 0.7257| 0.7291| 0.7324| 0.7357| 0.7389| 0.7422| 0.7454| 0.7486| 0.7517| 0.7549|
| 0.7| 0.7580| 0.7611| 0.7642| 0.7673| 0.7704| 0.7734| 0.7764| 0.7794| 0.7823| 0.7852|
| 0.8| 0.7881| 0.7910| 0.7939| 0.7967| 0.7995| 0.8023| 0.8051| 0.8078| 0.8106| 0.8133|
| 0.9| 0.8159| 0.8186| 0.8212| 0.8238| 0.8264| 0.8289| 0.8315| 0.8340| 0.8365| 0.8389|
| 1.0| 0.8413| 0.8438| 0.8461| 0.8485| 0.8508| 0.8531| 0.8554| 0.8577| 0.8599| 0.8621|
| 1.1| 0.8643| 0.8665| 0.8686| 0.8708| 0.8729| 0.8749| 0.8770| 0.8790| 0.8810| 0.8830|
| 1.2| 0.8849| 0.8869| 0.8888| 0.8907| 0.8925| 0.8944| 0.8962| 0.8980| 0.8997| 0.9015|
| 1.3| 0.9032| 0.9049| 0.9066| 0.9082| 0.9099| 0.9115| 0.9131| 0.9147| 0.9162| 0.9177|
| 1.4| 0.9192| 0.9207| 0.9222| 0.9236| 0.9251| 0.9265| 0.9279| 0.9292| 0.9306| 0.9319|
| 1.5| 0.9332| 0.9345| 0.9357| 0.9370| 0.9382| 0.9394| 0.9406| 0.9418| 0.9429| 0.9441|
| 1.6| 0.9452| 0.9463| 0.9474| 0.9484| 0.9495| 0.9505| 0.9515| 0.9525| 0.9535| 0.9545|
| 1.7| 0.9554| 0.9564| 0.9573| 0.9582| 0.9591| 0.9599| 0.9608| 0.9616| 0.9625| 0.9633|
| 1.8| 0.9641| 0.9649| 0.9656| 0.9664| 0.9671| 0.9678| 0.9686| 0.9693| 0.9699| 0.9706|
| 1.9| 0.9713| 0.9719| 0.9726| 0.9732| 0.9738| 0.9744| 0.9750| 0.9756| 0.9761| 0.9767|
| 2.0| 0.9772| 0.9778| 0.9783| 0.9788| 0.9793| 0.9798| 0.9803| 0.9808| 0.9812| 0.9817|
| 2.1| 0.9821| 0.9826| 0.9830| 0.9834| 0.9838| 0.9842| 0.9846| 0.9850| 0.9854| 0.9857|
| 2.2| 0.9861| 0.9864| 0.9868| 0.9871| 0.9875| 0.9878| 0.9881| 0.9884| 0.9887| 0.9890|
| 2.3| 0.9893| 0.9896| 0.9898| 0.9901| 0.9904| 0.9906| 0.9909| 0.9911| 0.9913| 0.9916|
| 2.4| 0.9918| 0.9920| 0.9922| 0.9925| 0.9927| 0.9929| 0.9931| 0.9932| 0.9934| 0.9936|
| 2.5| 0.9938| 0.9940| 0.9941| 0.9943| 0.9945| 0.9946| 0.9948| 0.9949| 0.9951| 0.9952|
| 2.6| 0.9953| 0.9955| 0.9956| 0.9957| 0.9959| 0.9960| 0.9961| 0.9962| 0.9963| 0.9964|
| 2.7| 0.9965| 0.9966| 0.9967| 0.9968| 0.9969| 0.9970| 0.9971| 0.9972| 0.9973| 0.9974|
| 2.8| 0.9974| 0.9975| 0.9976| 0.9977| 0.9977| 0.9978| 0.9979| 0.9979| 0.9980| 0.9981|
| 2.9| 0.9981| 0.9982| 0.9982| 0.9983| 0.9984| 0.9984| 0.9985| 0.9985| 0.9986| 0.9986|
| 3.0| 0.9987| 0.9987| 0.9987| 0.9988| 0.9988| 0.9989| 0.9989| 0.9989| 0.9990| 0.9990|
| 3.1| 0.9990| 0.9991| 0.9991| 0.9991| 0.9992| 0.9992| 0.9992| 0.9992| 0.9993| 0.9993|
| 3.2| 0.9993| 0.9993| 0.9994| 0.9994| 0.9994| 0.9994| 0.9994| 0.9995| 0.9995| 0.9995|
| 3.3| 0.9995| 0.9995| 0.9995| 0.9996| 0.9996| 0.9996| 0.9996| 0.9996| 0.9996| 0.9997|
| 3.4| 0.9997| 0.9997| 0.9997| 0.9997| 0.9997| 0.9997| 0.9997| 0.9997| 0.9997| 0.9998|
| 3.5| 0.9998| 0.9998| 0.9998| 0.9998| 0.9998| 0.9998| 0.9998| 0.9998| 0.9998| 0.9998|
| 3.6| 0.9998| 0.9998| 0.9999| 0.9999| 0.9999| 0.9999| 0.9999| 0.9999| 0.9999| 0.9999|
| 3.7| 0.9999| 0.9999| 0.9999| 0.9999| 0.9999| 0.9999| 0.9999| 0.9999| 0.9999| 0.9999|
| 3.8| 0.9999| 0.9999| 0.9999| 0.9999| 0.9999| 0.9999| 0.9999| 0.9999| 0.9999| 0.9999|
| 3.9| 1.0000| 1.0000| 1.0000| 1.0000| 1.0000| 1.0000| 1.0000| 1.0000| 1.0000| 1.0000|

## Resumen modelos de distribución de probabilidad


|Distribución                         |Probabilidad/Densidad/Distribución                                                                   |Esperanza |Varianza |
|:------------------------------------|:----------------------------------------------------------------------------------------------------|:---------|:--------|
|$\text{Bernoulli}\\ \mathit{Ber}(p)$ |$X = \begin{cases} 1 & \mbox{ con probabilidad } p \\ 0 & \mbox{ con probabilidad } 1-p \end{cases}$ |$p$       |$p(1-p)$ |



# Repaso

Este apéndice cubre algunas cuestiones matemáticas básicas que el lector
de este libro con seguridad habrá aprendido con anterioridad. Se incluyen
como referencia para facilitar el repaso a aquellos que lo necesiten.

## Logaritmos y exponenciales

## Combinatoria {#combinatoria}


Una de las definiciones de probabilidad implica **contar**
el número de veces que puede ocurrir un suceso determinado. Por tanto,
en muchas ocasiones el cálculo de probabilidades empieza contando las
posibilidades de que ocurra un suceso. La Combinatoria es la parte de la
Matemática discreta que nos ayuda en esta tarea. Incluimos un breve
resumen con ejemplos de las fórmulas más habituales y su cálculo con R.

### Ejemplo ilustrativo

Habitualmente se utilizan ejemplos de juegos de azar para introducir el
cálculo de probabilidades, como lanzamiendo de monedas y dados, o
combinaciones de cartas en barajas de naipes. Para darle un enfoque
práctico, utilizaremos a lo largo del módulo un ejemplo ilustrativo que,
aunque totalmente inventado, se puede encontrar el lector
en el futuro con ligeras variaciones según su ámbito de actuación.
Utilizaremos en lo posible las cifras usadas en los problemas de azar
para ver la utilidad de aquéllos ejemplos en casos más prácticos.

Datos básicos:

-   52 posibles usuarios de un servicio

-   La mitad son mujeres

-   4 directivos, 12 mandos, resto operarios

-   13 jóvenes, 26 adultos, 13 mayores (5, 18 y 3 mujeres en cada
    grupo respectivamente)

-   1 de cada seis hombres contratará el servicio (el doble si es mujer)



Nótese cómo podemos *traducir* el concepto de
servicio a cualquier ámbito: usuarios de salud o educación, enfermos de
una determinada patología, equipos de una infraestructura, etc. Asimismo
las categorías pueden ser cualesquiera aplicables a los elementos de los
conjuntos. 

### Principio básico de conteo

**Definición**: Realizamos $k$ experimentos sucesivamente, cada
uno de ellos con $n_i$ posibles resultados ($i=1, \ldots, k$). Entonces
el número total de resultados posibles es:

$$n_1\cdot n_2, \cdot \ldots \cdot n_k$$

**Ejemplo**: Resultados posibles si tomamos al azar un individuo
y observamos su grupo de edad y si contratará o no el servicio.

**Código**


```r
3*2
#> [1] 6
```

### Permutaciones

**Definición**: De cuántas formas posibles podemos ordenar un
conjunto de $n$ elementos sin repetirlos.

$$P_n = n! = n\cdot(n-1)\cdot(n-2)\cdot\ldots\cdot 2\cdot 1$$

**Ejemplo**: De cuántas formas podemos ordenar un conjunto de
tres individuos, uno de cada categoría laboral.

**Código**


```r
factorial(3)
#> [1] 6
```


### Variaciones (muestreo sin reemplazamiento)

**Definición**: De cuántas formas posibles podemos seleccionar
una muestra de $n$ elementos de un conjunto total de $m$, sin que se
repitan. Una ordenación distinta, es una posibilidad distinta.

$$V_{m,n} = m\cdot(m-1)\cdot(m-2)\cdot\ldots\cdot (m-n+1) = \frac{m!}{(m-n)!}$$

**Ejemplo**: De cuántas formas podemos seleccionar una muestra
de 5 individuos en nuestro conjunto de 52 sin que se repitan (por
ejemplo para asignar un ranking)

**Código**


```r
factorial(52)/factorial(52-5)
#> [1] 311875200
```

### Variaciones con repetición (muestreo con reemplazamiento)

**Definición**: De cuántas formas posibles podemos seleccionar
una muestra de $n$ elementos de un conjunto total de $m$, pudiéndose
repetir. Una ordenación distinta, es una posibilidad distinta.
$$\mathit{VR}_{m,n} = m^n$$

**Ejemplo**: De cuántas formas podemos seleccionar una muestra
de 5 individuos en nuestro conjunto de 52 pudiéndose repetir (por
ejemplo para asignar premios consecutivamente)

**Código**


```r
52^5
#> [1] 380204032
```

### Combinaciones (muestras equivalentes)

**Definición**: De cuántas formas posibles podemos seleccionar
una muestra de $n$ elementos de un conjunto total de $m$, sin importar
el orden. 

$$\mathit{C}_{m,n} = \binom{m}{n} = \frac{m!}{n!(m-n)!}$$

$\binom{m}{n}$ se lee _m sobre n_, y se le conoce como _número combinatorio_.
Algunas propiedades importantes de los números combinatorios:

$$\binom{m}{m} = \binom{m}{0} = 1.$$
$$\binom{m}{1} = \binom{m}{m-1} = m.$$
$$\binom{m}{n} + \binom{m}{n+1} = \binom{m+1}{n+1}$$ 
Por otra parte, por convenio se tiene que:

$$0!=1,$$

$$\text{si } a <b \implies \binom{a}{b} = 0.$$


**Ejemplo**: De cuántas formas podemos seleccionar una muestra
de 5 individuos en nuestro conjunto de 52 sin importar el orden (por
ejemplo para asignar premios de una sola vez)

**Código**


```r
choose(52, 5)
#> [1] 2598960
```

### Combinaciones y permutaciones con repetición

Las combinaciones y
permutaciones también se pueden dar con repetición, siendo las fórmulas
para calcularlas las siguientes: 

$$\mathit{CR}_{m,n}= \mathit{C}_{m+n-1,n}= \frac{(m+n-1)!}{n!\cdot(m-1)!}$$
$$\mathit{PR} = \frac{n!}{a!\cdot b!\cdot \ldots\cdot z!}$$

La primera situación es aquella en la que los
elementos se pueden repetir, pero no nos importa el orden en que lo
hagan. La segunda aparece cuando el elemento A del conjunto total de
elementos aparece $a$ veces, y así sucesivamente.

# Ampliación

En este apéndice se incluyen temas avanzados que pueden ser útiles al lector
más allá de un curso básico de estadística para ciencias o ingeniería, y 
que no se han incluido en el cuerpo de los capítulos para mantener el nivel 
de una asignatura de grado.

## Función característica

## Cambio de variable

## Variables aleatorias unidimensionales mixtas

## Variables aleatorias bidimensionales mixtas

## Algunos modelos de distribución continuos más


### Distribución Beta

La distribución Beta se utiliza en problemas de inferencia relativos a proporciones, especialmente en inferencia bayesiana.

$$X \sim \mathit{Be}(\alpha, \beta)$$

**Función de densidad**

$$f(x) = 
\begin{cases}
\frac{\Gamma(\alpha + \beta)}{\Gamma(\alpha)\Gamma(\beta)}x^{\alpha-1}(1-x)^{\beta -1} & \text{si } 0 < x < 1\\
0 & \text{resto } 
\end{cases}$$

En matemáticas, la función Gamma ($\Gamma$) es una integral indefinida que tiene entre otras las siguientes propiedades:

* $\Gamma(\alpha) = \int_0^\infty x^{\alpha -1} e^{-x} dx, \qquad \alpha > 0 $
* $\Gamma(\alpha + 1) = \alpha \Gamma(\alpha)$
* $n \in \mathbb{N}-\{0\} \implies \Gamma(n) = (n-1)!$
* $\Gamma(\frac{1}{2}) = \sqrt{\pi}$
 

** Características**

* Esperanza: $E[X] = \frac{\alpha}{\alpha + \beta}$
* Varianza: $\mathit{Var}[X] = \frac{\alpha\beta}{(\alpha + \beta)^2(\alpha + \beta+1)}$
* Caso particular: $\mathit{Be}(1,1) = U(0,1)$.

**Ejemplo**

$X$: Proporción de clientes que contratarán el servicio

$X\sim \mathit{Be}(1, 5)$


**Código**


```r
mibeta <- function(x) dbeta(x, 1, 5)
curve(mibeta, lwd = 2)
```

<img src="91-apendices_files/figure-html/unnamed-chunk-10-1.png" width="672" />



### Distribución Gamma

La distribución Gamma se utiliza, entre otros, para modelizar tiempos de espera hasta que suceden $\alpha$ eventos en un proceso de Poisson. De hecho, en inferencia bayesiana gamma es la distribución a priori de la distribución de Poisson.

$$X \sim \mathit{Ga}(a, b)$$

**Función de densidad**

$$f(x) =
\begin{cases}
\frac{b^a}{\Gamma(a)}x^{a-1}{e}^{-bx} & \text{si } 0 < x < \infty\\
0 & \text{resto }
\end{cases}$$


**Características**

* Esperanza: $E[X] = \frac{a}{b}$
* Varianza: $\mathit{Var}[X] = \frac{a}{b^2}$
* $\Gamma(\alpha) = \int_0^\infty x^{\alpha -1} e^{-x} dx $
* La exponencial es un caso particular

**Código**


```r


migamma <- function(x, a) dgamma(x, a, 2)
curve(migamma(x, 1), lwd = 2, xlim = c(0,10), 
      main = "Distribución Gamma b = 2")
curve(migamma(x, 2), lwd = 2, add = TRUE, lty = 2)
curve(migamma(x, 4), lwd = 2, add = TRUE, lty = 3)
legend(x = 6, y = 2, c("a = 1", "a = 2", "a = 4"), lty = 1:3)
```

<img src="91-apendices_files/figure-html/unnamed-chunk-11-1.png" width="672" />

### Distribución de Weibull

La distribución Gamma presenta algunos inconventientes al modelizar tiempos de vida, y por eso algunas veces se prefiere la distribución de Weibull, que básicamente sirve para lo mismo. Véase \cite{ugarte2015} para los detalles.

$$X \sim \mathit{We}(a, b) $$

**Función de densidad**
$$f(x) =
\begin{cases}
\frac{a}{b}\left (\frac{x}{b} \right)^{a-1}e^{-(x/b)^a} & \text{si } x > 0\\
0 & \text{resto }
\end{cases}$$

**Características**

* Esperanza: $E[X] =b \Gamma\left (1 + \frac{1}{a} \right )$
* Varianza: $\mathit{Var}[X] = b^2 \left ( \Gamma \left ( 
                                      1 + \frac{2}{a} \right 
                                      ) 
                             - \left ( \Gamma \left (1 + \frac{2}{a} \right ) \right )^2 \right )$
 

**Código**


```r
miweibull <- function(x, a) dweibull(x, a, 2)
curve(miweibull(x, 1), lwd = 2, xlim = c(0,5), 
      ylim = c(0, 1),
      main = "Distribución Weibull b = 2")
curve(miweibull(x, 2), lwd = 2, add = TRUE, lty = 2)
curve(miweibull(x, 5), lwd = 2, add = TRUE, lty = 3)
legend(x = 4, y = 1, c("a = 1", "a = 2", "a = 5"), lty = 1:3)
```

<img src="91-apendices_files/figure-html/unnamed-chunk-12-1.png" width="672" />


## Modelos de distribución de probabilidad multivariantes

## Modelos de distribución de probabilidad relacionadas con la normal

## Simulación de variables aleatorias

$U(0;\; 1)$: Generador de probabilidades aleatorias. Dada cualquier función de distribución $F$, se pueden generar valores de esa VA obteniendo $F^{-1}(U(0;\; 1))$


# Demostraciones 

Em este apéndice se incluyen aquellas demostraciones de teoremas y propiedades
no incluidas en los capítulos para mantener el carácter práctico del mismo.

## Variable aleatoria discreta

### Función de probabilidad

### Esperanza

### Varianza



# Créditos {#creditos}

Los gráficos y diagramas generados son creación y propiedad del autor, salvo que se
indique lo contrario. Su licencia de uso es la misma que la del resto de la
obra, véase el Prefacio.

La [imagen de la portada](https://pixabay.com/es/illustrations/fondo-abstracto-l%C3%ADnea-ilustración-2462436/) es de dominio público, obtenida en [pixabay.com](https://pixabay.com/es/), gracias al
usuario [Manuchi](https://pixabay.com/es/users/manuchi-1728328/).


Las imágenes de tipo _clipart_ usadas en esta obra y las fotografías no atribuidas
pertenecen al dominio público gracias a [openclipart.org](http://www.openclipart.org), [unplash.com](https://unsplash.com) o [pixabay.com](https://pixabay.com/es/).

The [R logo](https://www.r-project.org/logo/) is (c) 2016 The R Foundation.
