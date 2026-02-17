


# Diseño de experimentos {#doe}

## Introducción

El Diseño y Análisis de Experimentos (que abreviaremos como DoE), como cualquier
otra técnica estadística, se basa en el estudio de la variabilidad. DoE es la
herramienta más potente para la mejora, lo que ha llevado a algunos autores a
llamarlo "the jewel of quality engineering" (Ver por ejemplo
@allen2010).

En capítulos anteriores del libro hemos aprendido las herramientas básicas 
para **analizar la variabilidad** de los datos. En este capítulo vamos a revisar 
las técnicas de Diseño de Experimentos y
su posterior análisis. Demasiado a menudo los esfuerzos se centran en intentar
analizar un experimento sin diseño, lo que provoca frustración en los equipos
involucrados en el análisis de datos. Vamos a mostrar la
importancia de la fase de diseño, así como su planificación y correcta
ejecución. No obstante la parte de análisis es igualmente importante, sobre todo en
lo que concierne a la correcta interpretación de los resultados y la toma de decisiones informada.



:::{.rmdcafe data-latex=""}
En su discurso presidencial ante el Primer Congreso Estadístico de la India, Sir Ronald Fisher (1890-1962) dijo:

>_"To consult the statistician after an experiment is finished is often merely to ask him to conduct a post mortem examination. He can perhaps say what the experiment died of"_. 

O, dicho en otras palabras, cuando analizamos los datos del experimento sin haber participado en el diseño, lo más que podemos hacerle es la autopsia.
:::


## Bases del DoE: origen, importancia, objetivos y requerimientos


El DoE moderno surge a principios del siglo XX de la mano de Ronald A. Fisher
cuando trabajaba en el "Rothamsted Experimental Station" en Inglaterra. Sus
estudios se centraban en reducir la variación natural y prevenir la confusión 
con la variación de los restantes efectos. En última instancia, detectar
las relaciones causa-efecto con el menor esfuerzo experimental.



Básicamente, necesitamos el DoE frente a
estudios observacionales u otras estrategias como "un factor cada vez" para
estudiar las interacciones y encontrar relaciones de causa-efecto con 
el menor uso de recursos posible.
Así, podremos tomar decisiones respaldadas por los datos.




El objetivo del diseño de experimentos es encontrar los niveles de
ciertos factores que optimizan una determinada característica medible. 
Esto se consigue con un método sistemático^[En realidad, el método científico.] que evita salidas en falso y respuestas
incompletas. Mediante la reducción del error experimental se consigue evitar la confusión de los efectos y anular los efectos sin interés para el estudio. 





Para empezar, lo primero que necesitamos es definir los datos del problema
objeto de estudio y disponer de una forma de obtenerlos adecuadamente, en particular:

- Una variable respuesta en escala métrica.
- Factores controlables.
- Posiblemente, otros factores aleatorios.

Esta recogida de datos se debe realizar de forma sistemática y 
teniendo en cuenta los tres pilares del DoE: **aleatorización**, **bloqueo** y
**replicación**.




## Importancia del diseño {#doe.importancia}

Con la experimentación básicamente controlamos los niveles a los que operan
ciertos factores controlables, a la vez que se asignan dichos niveles
(configuraciones, tratamientos, etc.) a las unidades experimentales. Esto
permite, unido a las apropiadas estrategias de aleatorización, bloqueo y
replicación, realizar predicciones acerca del desempeño de un determinado
proceso. Estas predicciones así establecidas serán el resultado de la
identificación de una relación causa-efecto, que no se puede conseguir
simplemente analizando datos recogidos sin diseño. En los **estudios observacionales**:

  - Recogemos información (o simplemente "está ahí").
  - No controlamos factores.
  - Se realizan análisis descriptivos.
  - Se descubren **relaciones** mediante inferencia.

Mientras que con **experimentos diseñados**:

  - Se controlan los factores y su asignación a los elementos en estudio (sujetos, cosas, plantas, ...)
  - Se analizan los efectos en la variable respuesta.
  - Se analizan las interacciones de los factores.
  - Se verifica la relación **causa-efecto**.




Si la experimentación se lleva a cabo variando una vez cada factor, buscando el
valor óptimo para la respuesta para cada factor individualmente dejando fijos
el resto arbitrariamente, estaremos obviando un aspecto
fundamental: el efecto de las interacciones. La interacción es el efecto que tiene un factor a distintos niveles de otros factores. 

Por otra parte, el número de 
experimentos necesarios para llegar a conclusiones válidas es mucho mayor
(y por tanto el experimento más costoso). Mediante un experimento diseñado obtenemos el mayor número de combinaciones posibles para estimar interacciones, con el mínimo número de experimentos.


::: {.rmdcafe data-latex=""}

El análisis de datos, por muy sofisticado que sea, no puede nunca
_arreglar_ un experimento mal diseñado (chapucero, según Lawson)

>  As we know from Murphy's Law, if anything can go wrong it will, and analysis of
  data can never compensate for botched experiments  
    @lawson2015
:::


El análisis de la varianza (ver capítulo \@ref(anova)) sin diseño de experimentos tiene algunas
limitaciones importantes. Sin Diseño de Experimentos, los datos pueden ser inconsistentes o incompletos, al no incluir factores de ruido o Factores latentes.
Si tenemos variables correlacionadas, y alguna de ellas no se
mide, su efecto puede quedar enmascarado por las otras, como en el ejemplo de la figura \@ref(fig:c1), donde si miramos solo la relación de la variable respuesta
con el factor 1 (gráfico de la izquierda), podemos llegar a la conclusión
errónea de que el factor 1 es determinante. Pero podría ser que la causa real
sea el factor 2, que no ha sido medido y está muy correlacionado con el factor 1. 
En el gráfico de la derecha vemos que la variable respuesta crece en el mismo sentido que los factores 1 y 2, pero podría ser que el factor 2, no medido al principio, sea la causa, y no el que realmente se ha medido.



```
#> Warning: `qplot()` was deprecated in ggplot2 3.4.0.
#> This warning is displayed once every 8 hours.
#> Call `lifecycle::last_lifecycle_warnings()` to see where
#> this warning was generated.
```

<div class="figure" style="text-align: center">
<img src="11-doe_files/figure-html/c1-1.png" alt="Efecto de no medir un factor" width="100%" />
<p class="caption">(\#fig:c1)Efecto de no medir un factor</p>
</div>


Por otra parte, el rango de valores de la variable respuesta está limitado por su
rango normal de operación, que puede ocultar relaciones más amplias. En la figura
\@ref(fig:valuesrange1), el gráfico de la izquierda se corresponde con el rango de 
variación normal de
los factores de un proceso. En el de la derecha, ampliamos el rango de
posibles valores de la variable, y vemos algunos patrones que quedan
ocultos en el otro caso. Por ejemplo, en los valores inferiores la pendiente es más pronunciada, mientras que en los valores superiores parece que
se empieza a invertir la tendencia.


```
#> Warning: The following aesthetics were dropped during statistical
#> transformation: colour.
#> ℹ This can happen when ggplot fails to infer the correct
#>   grouping structure in the data.
#> ℹ Did you forget to specify a `group` aesthetic or to
#>   convert a numerical variable into a factor?
```

<div class="figure" style="text-align: center">
<img src="11-doe_files/figure-html/valuesrange1-1.png" alt="Efecto de la limitación del rango de valores" width="100%" />
<p class="caption">(\#fig:valuesrange1)Efecto de la limitación del rango de valores</p>
</div>




## Planificación de la experimentación

El conocimiento de la materia en cuestión (_subject matter knowledge_) es fundamental para desarrollar
cambios que resulten en mejoras. Sin embargo, es
necesario otro tipo de conocimiento (_profound knowledge_), en el que se
incluye la Estadística. Combinar ambos conocimientos, lleva a una
mayor capacidad de mejora.
Estas ideas, originarias de Deming, se recogen en @moen2012.
Algunas capacidades necesarias fruto de esta combinación son:

  - Entender las interdependencias entre los sistemas donde se lleva a cabo
  la experimentación.
  - Entender la relación entre las predicciones y el conocimiento del
  sistema que se quiere cambiar.
  - Entender el efecto temporal de los cambios.
  - Entender la importancia de la estabilidad del proceso.
  - Entender la extrapolación de los resultados de las pruebas para mejorar
  el sistema.



En general, se pueden seguir tres estrategias de planificación para el diseño de
experimentos:

1. Sin planificación. Se pueden ir cambiando niveles de factores cada
vez y haciendo pruebas (ensayo-error). Esto es definitivamente poco efectivo. 
2. Planificación completa desde el inicio. Si es muy rígida, nos puede llevar a no explorar alternativas
que puedan surgir durante la experimentación. Y por tanto a no cumplir los objetivos. 
3. Planificación **secuencial**. Esta es la
estrategia óptima. Se llevan a cabo un número de experimentos al inicio, cuyas
conclusiones supondrán la planificación de una segunda fase donde centrarnos en
los factores realmente relevantes y hacer análisis más detallados y precisos. En las
primeras fases se suelen realizar diseños de _screening_ para descartar
factores no significativos. En las siguientes fases, se amplían los experimentos solo con los factores significativos. 

En realidad, esta estrategia secuencial es la aplicación del método científico,
en un proceso iterativo de aprendizaje como se muestra en la figura \@ref(fig:metodo). El experimento partirá de un objetivo que planteará ciertas hipótesis. Por deducción, se diseña el experimento y se obtienen datos. Estos datos confirman o no las hipótesis mediante la inducción, y nos hace plantearnos nuevas hipótesis. Así, hasta llegar a la conclusión y/o decisión final.



<div class="figure" style="text-align: center">
<img src="11-doe_files/figure-html/metodo-1.png" alt="Método iterativo de aprendizaje" width="672" />
<p class="caption">(\#fig:metodo)Método iterativo de aprendizaje</p>
</div>


En @moen2012 se propone el ciclo PDSA (_Plan-Do-Study-Act_) para la mejora que se muestra en la figura \@ref(fig:ciclo). Básicamente consiste en:

1. Planifica un cambio o prueba, dirigido a la **mejora**.
2. Lleva a cabo el cambio o prueba, preferiblemente de corto alcance.
3. Estudia el resultado: ¿qué has aprendido? ¿qué ha ido mal?
4. Actúa:
    - Adopta el cambio.
    - Abandónalo.
    - Empieza el ciclo de nuevo.
  
Una cuestión fundamental es la necesidad de **documentar** todas las acciones de mejora, así como las lecciones aprendidas durante el proceso.


<div class="figure" style="text-align: center">
<img src="11-doe_files/figure-html/ciclo-1.png" alt="Ciclo PDSA para la mejora" width="672" />
<p class="caption">(\#fig:ciclo)Ciclo PDSA para la mejora</p>
</div>



Una buena forma de empezar el ciclo es a partir de un análisis de causa y
efecto, por ejemplo con un diagrama de Ishikawa o de espina de pescado (_fishbone_) como el que aparece en la
figura \@ref(fig:cefecto). Con esta técnica se identifica cuál es la variable respuesta que queremos investigar (efecto, cabeza del pescado) y cuáles son los posibles factores que pueden estar relacionados, y de los que en última instancia queremos averiguar si son la causa del efecto (espinas).

<div class="figure" style="text-align: center">
<img src="11-doe_files/figure-html/cefecto-1.png" alt="Ejemplo diagrama de causa-efecto" width="672" />
<p class="caption">(\#fig:cefecto)Ejemplo diagrama de causa-efecto</p>
</div>

Lo siguiente probablemente sería determinar el presupuesto/recursos disponibles,
en especial determinar el número de experimentos que se pueden realizar
realísticamente.



Hasta ahora, hemos ido mencionando algunos conceptos básicos del diseño de
experimentos. Ahora vamos a definirlos un poco más formalmente.

- **Variable respuesta**:  La variable de interés que pretendemos
  optimizar o determinar sus causas. En el ámbito industrial, será una cuantificación de alguna característica de
  calidad, en sentido amplio.
- **Factor**: Variable independiente que puede ser causa de la respuesta.
  La inferencia que haremos con DoE será confirmar o rechazar esta
  hipótesis, así como la cuantificación de este efecto.
- **Variable de bloque**: Variable que no tiene interés en la investigación,
  pero puede influir en la respuesta. Mediante la formación de bloques
  aleatorios confundimos su efecto con los factores que realmente nos interesan.
- **Variable ruido**: Variable que puede influir en la respuesta, pero de la
  que no tenemos control.
- **Nivel**: Valor que fijamos de un factor. En variables
  cualitativas, es una categoría. En variables cuantitativas, un valor numérico
  determinado fijado con antelación.
  A menudo se le llama también tratamiento, aunque cuando se estudia más de un factor sería más apropiado hablar de tratamiento como combinación de los niveles de los factores.
- **Unidad experimental**: La división más pequeña posible de unidades de un
  experimento tal que a dos cualesquiera se les pueden aplicar distintas
  combinaciones de factores y niveles.
- **Unidad observable**: Cada uno de los elementos que forman la unidad
  experimental. A veces, un tratamiento no se puede aplicar a un solo
  elemento, sino a varios a la vez.
- **Bloque**: Grupos de unidades experimentales que son tratados de forma
  similar en el experimento.
- **Efecto**: El principal resultado de interés del experimento: qué pasa con
  la variable respuesta para cada nivel de un factor o combinación de factores.
- **Réplica**: Repetición de un experimento sobre una misma combinación de
  factores y niveles, a **diferentes** unidades experimentales.
- **Repetición**: Repetición de la medición de la respuesta con las mismas
  condiciones experimentales, a **la misma** unidad experimental.
- **Aleatorización**: Asignación de niveles y bloques a unidades
  experimentales de forma aleatoria.




Al utilizar un modelo para simplificar la realidad, estamos cometiendo un
error. El **error experimental** es aquel que se debe exclusivamente a las réplicas
de las mismas condiciones experimentales. En cada diseño el error experimental
se calcula de una forma distinta, de forma que se separa de la variabilidad total
para ver cuánta variación se debe al modelo y poder así tomar decisiones. Así, en el modelo general:

$$Y = f(\mathbf{X}) + \varepsilon,$$

- $Y$ es la variable respuesta.
- $\mathbf{X}$ es el conjunto de variables predictivas.
- $f$ es una función (lineal, exponencial, etc.)
- $\varepsilon$ es una variable aleatoria que recoge todo lo que no explica la función $f$ de la variable respuesta $Y$.


Los siguientes principios son cruciales a la hora de diseñar el experimento.

- **Aleatorización**. Los tratamientos deben ser asignados de forma aleatoria a las 
unidades experimentales. Esto incluye bloques, factores controlables, anidamientos, 
etc.

- **Formación de bloques**. Cuando no se puedan replicar exactamente las condiciones 
experimentales (por ejemplo, días diferentes), se deben organizar en bloques.

- **Réplicas**. Para poder estimar el error experimental y hacer contrastes de 
hipótesis, es necesario tener más de una _corrida_ de cada combinación de tratamientos.




@lawson2015 propone la siguiente _checklist_ a la hora de planificar
experimentos:

1. Definir objetivos.
2. Identificar unidades experimentales.
3. Definir variable respuesta medible y con sentido.
4. Identificar los factores controlables y latentes.
5. Ejecutar pruebas piloto.
6. Hacer diagrama de flujo para cada experimento.
7. Elegir el **diseño experimental**. Esta parte es crucial.
8. Determinar el número de réplicas necesarias.
9. Aleatorizar las condiciones experimentales a las unidades experimentales.
10. Definir método de análisis de datos.
11. Calendario y presupuesto para la ejecución.

Es aconsejable recoger toda esta información en un formulario estandarizado que forme parte de la documentación del experimento o proyecto de mejora.




## Tipos de diseños de experimentos

Existen una enorme cantidad de posibles tipos de diseños experimentales. La decisión sobre cuál utilizar en cada situación concreta depende principalmente de los objetivos de la investigación y de las características de las unidades experimentales (de ahí la importancia de caracterizarlas de forma precisa durante el diseño). La figura \@ref(fig:tiposdisenos) muestra la categorización que hace @lawson2015. A continuación se enumeran estos  diseños con una breve explicación de cada uno.

<div class="figure" style="text-align: center">

```{=html}
<div class="grViz html-widget html-fill-item" id="htmlwidget-29e925102d01db730e25" style="width:100%;height:480px;"></div>
<script type="application/json" data-for="htmlwidget-29e925102d01db730e25">{"x":{"diagram":"\ndigraph one_factor{\n  graph [layout=dot, rankdir = TB, compound = true, fontsize = 10, color = crimson]\n  node [shape = box]\n  \"Propósito\ndel diseño\"; \"RSE\"; LSD;RCD  \"RCB\";  \"GCB\"; \"PBIB,PTIB\"; \"BIB\"; \"Tamaño de bloque\" ;\"FRSE\nNSE\nSNSE\"; \"CRFD\nCRFF\nPB,OA\"; CRRS; \"SLD\nSCD\nEVD\"; RCBF; RBSP; \"CRSP\nSPFF\"; \"RSSP\nEESPRS\"; SPMPV; BRS; PCBF; CCBF\n  \n  node [shape = diamond]\n  \"Unidades experimentales\"\n  \"Factores de bloque\"\n  \n  \n  \"Unidades experimentales\" -> \"Factores de bloque\" [label = \"Heterogéneos\"] \n  \"Unidades experimentales\" -> \"CRD\" [label = \"Homogéneos\"] \n  \"Factores de bloque\" -> \"Tamaño de bloque\" [label = \"Uno\"] \n  \"Factores de bloque\" -> \"LSD\" [label = \"Dos\"] \n  LSD -> RCD\n  \"Tamaño de bloque\" -> \"RCB\" [label = \"Grande\"] \n  \"Tamaño de bloque\" -> \"PBIB,PTIB\" [label = \"Pequeño\"] \n  \"Propósito\ndel diseño\" -> RSE [label = \"Estudiar varianzas\"] \n  RCB -> GCB\n  \n    \"Propósito\ndel diseño\" -> \"Unidades experimentales\" [label = \"Estimar efectos\nde los factores\"] \n\n  \n  \n  subgraph cluster0{\n    label = \"Un factor\";\n    RSE\n    CRD\n    LSD\n    RCD\n    RCB\n    GCB\n    \"PBIB,PTIB\"\n    \"BIB\"\n  }\n  RSE -> \"FRSE\nNSE\nSNSE\"\n  \n  subgraph cluster1{\n  label = \"Varios factores\";\n    \"FRSE\nNSE\nSNSE\"\n        CRD -> \"Tipo factor\"\n    \"Tipo factor\" -> \"CRFD\nCRFF\nPB,OA\" [label = \"Categórico\"]\n    \"Tipo factor\" -> CRRS [label = \"Continuo\"]\n    \"Tipo factor\" -> \"SLD\nSCD\nEVD\" [label = \"Mezcla\"]\n    GCB -> RCBF\n    \"PBIB,PTIB\" -> \"BIB\"\n    BIB -> Factores\n    Factores -> BRS [label = \"Continuos\"]\n    Factores -> PCBF [label = \"Categóricos\"]\n    PCBF -> CCBF\n  } \n  subgraph cluster2{\n  label = \"Varios factores (algunos difícil de variar)\";\n    RCBF -> RBSP\n    \"CRFD\nCRFF\nPB,OA\" -> \"CRSP\nSPFF\"\n    \"CRRS\" -> \"RSSP\nEESPRS\"\n    \"SLD\nSCD\nEVD\" -> SPMPV\n    \n  } \n}  \n","config":{"engine":"dot","options":null}},"evals":[],"jsHooks":[]}</script>
```

<p class="caption">(\#fig:tiposdisenos)Esquema de diseños experimentales en Lawson (2015)</p>
</div>



* **CRD**, _Completely Randomized Design_: **Diseño completamente aleatorizado**. Este diseño se debería utilizar cuando solo hay un factor en estudio y las unidades experimentales son homogéneas. El análisis se corresponde con el ANOVA estudiado en el capítulo \@ref(anova).

* **CRFD**, _Completely Randomized Factorial Design_: **Diseño factorial completamente aleatorizado**. Este diseño se utiliza cuando se estudia más de un factor a la vez. Permite estudiar las interacciones entre los factores. El análisis se corresponde también con el ANOVA estudiado en el capítulo \@ref(anova). Un caso particular son los diseños a dos niveles o $2^k$, que veremos en detalle más adelante.

* **CRRS**, _Completely Randomized Response Surface_: **Superficie respuesta completamente aleatorizado**. Este diseño se utiliza cuando se estudian dos o tres factores continuos en los que puede aparecer curvatura y por tanto los valores que optimizan la respuesta pueden no estar en el perímetro de la región de diseño. Se suelen aplicar en la fase de caracterización de un experimento, después de haber seleccionado en la fase de cribado los factores más significativos.


## Experimentos con un factor (CRD)

Podemos comparar una variable a distintos niveles de un solo
factor. El contraste de la $t$ de Student es la técnica
utilizada para dos niveles. Para más niveles, utilizamos
el análisis de la varianza de un factor (véase el capítulo \@ref(anova).


El diseño experimental para el ANOVA de un factor sigue las siguientes pautas:

1. Se quiere estudiar el efecto de un solo factor sobre una población. No hay otros
factores controlables que puedan influir.

2. Se realiza el plan de recogida de datos, posiblemente con prueba piloto.

3. Se decide el número de unidades experimentales del experimento.

4. Se asignan **aleatoriamente** las unidades a los niveles del factor.

5. Se recogen los datos (experimento físico, cuestionario, etc.)

6. Se realiza un análisis descriptivo, sobre todo gráfico, de los datos recogidos. 

7. Los datos se verifican y se preparan adecuadamente para el análisis.

7. Se ajusta el modelo.

8. Se comprueba la validez del modelo. Si no es válido, se busca modelo alternativo de análisis.

9. Se estiman los parámetros.

10. Se comprueba la hipótesis principal.

11. Si hay diferencias, se realizan comparaciones por pares.

12. Se comprueba la significación práctica y se obtienen conclusiones o se toman
decisiones.













## Diseños factoriales (CRFD)

Cuando analizamos más de un factor a varios niveles, 
el número total de unidades experimentales necesarias para tener una ejecución completa del experimento será $n_1\times n_2, \cdots, n_k$,
donde $n_i$ es el número de niveles del factor $i$, y el número total de factores es $k$. Para tener dos réplicas completas del experimento necesitaremos el doble, y así sucesivamente.

Para el análisis de diseños equilibrados, aplicamos
lo explicado en el apartado \@ref(sec:anova2) para el ANOVA de dos factores con interacción. Recordemos que en
estos diseños es de vital importancia estudiar las interacciones.
El modelo se extiende inmediatamente a más de dos factores, en los
que las interacciones pueden ser dos a dos, tres a tres, etc. No obstante,
las interacciones de orden superior a 3 rara vez son significativas y se suelen descartar casi siempre.

A veces no es posible tener diseños equilibrados, es decir, con el mismo
número de réplicas en cada "celda" o cruce de niveles de factores. En estos casos, para hacer los contrastes correctos debemos utilizar la función `Anova()` del paquete {car} [@R-car], que calcula las sumas de cuadrados tipo II y tipo III, y los contrastes correctos. Las sumas de cuadrados del diseño equilibrado se suele llamar tipo I. Véase @lawson2015 para una explicación más detallada, o la entrada "Diferentes sumas de cuadrados en ANOVA" de "El blog de los herreros"^[https://erre-que-erre-paco.blogspot.com/2016/12/diferentes-sumas-de-cuadrados-en-anova.html].


:::{.rmdejemplo data-latex=""}
A modo ilustrativo, el siguiente código genera aleatoriamente datos de un supuesto experimento con tres factores: A (con niveles A1, A2 y A3), B (con niveles B1, B2 y B3) y C (con niveles C1 y C2). Las tablas ANOVA del diseño equilibrado son idénticas para los dos métodos. Pero si quitamos uno de los datos (puede ser una situación realista en un experimento tener un valor perdido), entonces las sumas de cuadrados con los distintos métodos no son iguales, y podrían llevar a decisiones distintas.
:::



``` r
library(car)
#> Loading required package: carData
#> 
#> Attaching package: 'car'
#> The following object is masked from 'package:dplyr':
#> 
#>     recode
#> The following object is masked from 'package:purrr':
#> 
#>     some
set.seed(666)
A <-  paste0("A", 1:3)
B <-  paste0("B", 1:3)
C <-  paste0("C", 1:2)
noeq <- data.frame(
  expand.grid(list(A = A, B = B, C = C)),
  respuesta = rnorm(3*18, 100, 10)
) |> 
  mutate(respuesta = round(if_else(C == "C2", 
                                   respuesta+rnorm(54, 8, 1), 
                                   respuesta), 1))

noeq |> aov(respuesta ~ ., data = _) |> summary()
#>             Df Sum Sq Mean Sq F value Pr(>F)  
#> A            2    148    73.8   0.576 0.5658  
#> B            2    314   157.1   1.227 0.3023  
#> C            1    791   791.2   6.175 0.0165 *
#> Residuals   48   6150   128.1                 
#> ---
#> Signif. codes:  
#> 0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
noeq |> aov(respuesta ~ ., data = _) |> Anova()
#> Anova Table (Type II tests)
#> 
#> Response: respuesta
#>           Sum Sq Df F value  Pr(>F)  
#> A          147.7  2  0.5762 0.56585  
#> B          314.3  2  1.2265 0.30233  
#> C          791.2  1  6.1755 0.01649 *
#> Residuals 6149.8 48                  
#> ---
#> Signif. codes:  
#> 0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

noeq$respuesta[54] <- NA
library(car)
noeq |> aov(respuesta ~ ., data = _) |> summary()
#>             Df Sum Sq Mean Sq F value Pr(>F)  
#> A            2    149    74.3   0.568 0.5704  
#> B            2    322   160.8   1.229 0.3018  
#> C            1    783   783.2   5.986 0.0182 *
#> Residuals   47   6149   130.8                 
#> ---
#> Signif. codes:  
#> 0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
#> 1 observation deleted due to missingness
noeq |> aov(respuesta ~ ., data = _) |> Anova()
#> Anova Table (Type II tests)
#> 
#> Response: respuesta
#>           Sum Sq Df F value  Pr(>F)  
#> A          137.8  2  0.5267 0.59398  
#> B          308.5  2  1.1791 0.31648  
#> C          783.2  1  5.9863 0.01821 *
#> Residuals 6148.7 47                  
#> ---
#> Signif. codes:  
#> 0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```


A medida que aumenta el número de factores a estudiar, el número de unidades experimentales a utilizar puede hacerse enorme, sobre todo si tenemos más de dos niveles. Para poder analizar un número grande de factores a modo de _screening_ o cribado, se utiliza a menudo un tipo especial de diseños factoriales con solo dos niveles por cada factor, que veremos a continuación por separado dada su importancia.


## Diseños factoriales a dos niveles $2^k$

Un tipo especial de diseño factorial es aquél en el que
todos los factores tienen solamente dos niveles. Es válido tanto para factores puramente categóricos como para factores de tipo continuo. En este último caso, se fijan un valor "bajo" y otro "alto" para el factor, que normalmente se representan como `-` y `+` respectivamente. 
Con posterioridad a la etapa de cribado se pueden añadir más puntos al diseño para afinar en la estimación.
En el caso de atributos, estos niveles alto y bajo serán arbitrarios, pero
en cualquiera de los dos casos, se deberían fijar de acuerdo al conocimiento en la materia para que haya una diferencia potencial entre los niveles.

El número
de experimentos necesarios para probar todas las combinaciones
de niveles para $k$ factores es $2^k$, de ahí su nombre. Por ejemplo,
en un experimento en el que quisiéramos analizar 5 factores con 4 niveles cada uno, necesitaríamos $4\times 4\times 4\times 4\times  4=4^5= 1024$ unidades experimentales, para cada réplica, mientras que en un experimento
$2^5$ serán suficientes 32.

La popularidad de los diseños $2^k$ se debe, entre otras, a las siguientes
causas:

* Como acabamos de ver, con pocas observaciones se pueden analizar muchos factores. Esto nos será muy útil en las fases iniciales para descartar factores que no tienen ningún efecto en la respuesta.
* Son fáciles de utilizar y el análisis se puede realizar con métodos gráficos.
* Estos diseños han demostrado funcionar muy bien con sistemas complejos e incluso no lineales a través del estudio de las interacciones.
* Se pueden analizar incluso más factores utilizando diseños fraccionales.

Los datos de los experimentos factoriales $2^k$ se pueden representar de forma exhaustiva con la llamada "matriz de diseño" o en forma de tablas. La forma estándar de la matriz de diseño contiene en la primera columna signos alternos `-` y `+`. En la siguiente columna se alternarán dos signos `-` y dos signos `+`, y así sucesivamente hasta la última columna con el último factor, que tendrá la primera mitad de signos `-` y la otra mitad de signos `+`. En la matriz de diseño se identifica el orden estándar, pero las observaciones **nunca** se recogerán en el orden de la matriz de diseño. A cada unidad experimental se le asignará una de las combinaciones **aleatoriamente**. Esto se puede hacer con medios mecánicos o con generación de números pseudoaleatorios con el ordenador. En la propia tabla se puede incorporar un identificador de unidad experimental convenientemente aleatorizado. Una vez recogidos los datos, estos se pueden añadir a la tabla, bien cada uno de los datos de las réplicas, o resumidos con la media.

La tabla \@ref(tab:matrizest) muestra una tabla con todos los datos de un hipotético experimento con tres factores sin réplicas, creado con el siguiente código. Se fija la semilla aleatoria para garantizar la reproducibilidad.


``` r
set.seed(1)
A <- B <- C <- c("-", "+")
dm <- expand.grid(list(A = A, B = B, C = C)) |> 
  mutate(`Unidad experimental (aleatoria)` = sample(1:8),
         `Respuesta (simulación)` = round(rnorm(8, 10, 2), 1)) |> 
  rownames_to_column("Orden estándar") 
dm |>
  flextable() |> 
  set_caption("Ejemplo de matriz de diseño y datos sin réplicas")
```


```{=html}
<div class="tabwid"><style>.cl-0f733b2a{}.cl-0f6f3ec6{font-family:'Helvetica';font-size:11pt;font-weight:normal;font-style:normal;text-decoration:none;color:rgba(0, 0, 0, 1.00);background-color:transparent;}.cl-0f70d66e{margin:0;text-align:left;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-0f70d678{margin:0;text-align:right;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);padding-bottom:5pt;padding-top:5pt;padding-left:5pt;padding-right:5pt;line-height: 1;background-color:transparent;}.cl-0f70e654{width:0.75in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0f70e65e{width:0.75in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 1.5pt solid rgba(102, 102, 102, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0f70e65f{width:0.75in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0f70e668{width:0.75in;background-color:transparent;vertical-align: middle;border-bottom: 0 solid rgba(0, 0, 0, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0f70e669{width:0.75in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}.cl-0f70e672{width:0.75in;background-color:transparent;vertical-align: middle;border-bottom: 1.5pt solid rgba(102, 102, 102, 1.00);border-top: 0 solid rgba(0, 0, 0, 1.00);border-left: 0 solid rgba(0, 0, 0, 1.00);border-right: 0 solid rgba(0, 0, 0, 1.00);margin-bottom:0;margin-top:0;margin-left:0;margin-right:0;}</style><table data-quarto-disable-processing='true' class='cl-0f733b2a'>
<caption style="display:table-caption;margin:0pt;text-align:center;border-bottom: 0.00pt solid transparent;border-top: 0.00pt solid transparent;border-left: 0.00pt solid transparent;border-right: 0.00pt solid transparent;padding-top:3pt;padding-bottom:3pt;padding-left:3pt;padding-right:3pt;line-height: 1;background-color:transparent;">(#tab:matrizest)<span>Ejemplo de matriz de diseño y datos sin réplicas</span></caption>
<thead><tr style="overflow-wrap:break-word;"><th class="cl-0f70e654"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">Orden estándar</span></p></th><th class="cl-0f70e654"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">A</span></p></th><th class="cl-0f70e654"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">B</span></p></th><th class="cl-0f70e654"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">C</span></p></th><th class="cl-0f70e65e"><p class="cl-0f70d678"><span class="cl-0f6f3ec6">Unidad experimental (aleatoria)</span></p></th><th class="cl-0f70e65e"><p class="cl-0f70d678"><span class="cl-0f6f3ec6">Respuesta (simulación)</span></p></th></tr></thead><tbody><tr style="overflow-wrap:break-word;"><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">1</span></p></td><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">-</span></p></td><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">-</span></p></td><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">-</span></p></td><td class="cl-0f70e668"><p class="cl-0f70d678"><span class="cl-0f6f3ec6">1</span></p></td><td class="cl-0f70e668"><p class="cl-0f70d678"><span class="cl-0f6f3ec6">6.9</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">2</span></p></td><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">+</span></p></td><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">-</span></p></td><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">-</span></p></td><td class="cl-0f70e668"><p class="cl-0f70d678"><span class="cl-0f6f3ec6">4</span></p></td><td class="cl-0f70e668"><p class="cl-0f70d678"><span class="cl-0f6f3ec6">8.1</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">3</span></p></td><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">-</span></p></td><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">+</span></p></td><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">-</span></p></td><td class="cl-0f70e668"><p class="cl-0f70d678"><span class="cl-0f6f3ec6">8</span></p></td><td class="cl-0f70e668"><p class="cl-0f70d678"><span class="cl-0f6f3ec6">9.4</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">4</span></p></td><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">+</span></p></td><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">+</span></p></td><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">-</span></p></td><td class="cl-0f70e668"><p class="cl-0f70d678"><span class="cl-0f6f3ec6">2</span></p></td><td class="cl-0f70e668"><p class="cl-0f70d678"><span class="cl-0f6f3ec6">10.0</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">5</span></p></td><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">-</span></p></td><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">-</span></p></td><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">+</span></p></td><td class="cl-0f70e668"><p class="cl-0f70d678"><span class="cl-0f6f3ec6">6</span></p></td><td class="cl-0f70e668"><p class="cl-0f70d678"><span class="cl-0f6f3ec6">14.8</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">6</span></p></td><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">+</span></p></td><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">-</span></p></td><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">+</span></p></td><td class="cl-0f70e668"><p class="cl-0f70d678"><span class="cl-0f6f3ec6">3</span></p></td><td class="cl-0f70e668"><p class="cl-0f70d678"><span class="cl-0f6f3ec6">11.5</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">7</span></p></td><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">-</span></p></td><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">+</span></p></td><td class="cl-0f70e65f"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">+</span></p></td><td class="cl-0f70e668"><p class="cl-0f70d678"><span class="cl-0f6f3ec6">7</span></p></td><td class="cl-0f70e668"><p class="cl-0f70d678"><span class="cl-0f6f3ec6">8.4</span></p></td></tr><tr style="overflow-wrap:break-word;"><td class="cl-0f70e669"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">8</span></p></td><td class="cl-0f70e669"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">+</span></p></td><td class="cl-0f70e669"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">+</span></p></td><td class="cl-0f70e669"><p class="cl-0f70d66e"><span class="cl-0f6f3ec6">+</span></p></td><td class="cl-0f70e672"><p class="cl-0f70d678"><span class="cl-0f6f3ec6">5</span></p></td><td class="cl-0f70e672"><p class="cl-0f70d678"><span class="cl-0f6f3ec6">7.7</span></p></td></tr></tbody></table></div>
```


La información de la tabla completa se puede compactar poniendo los factores en filas y columnas y los datos en las celdas con los cruces. También es habitual encontrar la representación geométrica en forma de cuadrados (2 factores), cubos (3 factores) o hipercubos (más de 3 factores). Se pueden ver algunos ejemplos en @lawson2015 y @moen2012.

Por la naturaleza dicotómica de los factores, la estimación de los factores es muy sencilla, resultando además que:

$$\alpha_1 = -\alpha_2;\; \beta_1=-\beta_2.$$


### Diseño factorial $2^2$

Es el diseño más sencillo que podemos hacer, y solo necesitamos $2^2=4$ unidades experimentales para cada réplica del experimento.

El modelo matemático sería el siguiente:

$$y_{ijk} = \mu + 
\alpha_i + \beta_j + \alpha\beta_{ij} + \varepsilon_{ijk},$$

donde $i, j$ toman dos valores, $\{-, +\}$, y $k$ representa las réplicas del experimento, $k = 1, \ldots, n$. Así, el número total de unidades experimentales es $n\times 2^2$. Si solo tenemos una réplica $(n=1)$, entonces podremos estimar los efectos pero no podremos hacer contrastes de hipótesis sobre su significatividad.


::: {.rmdpractica data-latex=""}
En el siguiente código se analiza un experimento con dos factores A y B a dos niveles, `+` y + `-`. Se muestran los gráficos de los efectos.
:::


``` r
library(effects)
datosf22 <- scan(text = "
-	-	28
-	-	25	
-	-	27
+	-	36
+	-	32
+	-	32
-	+	18
-	+	19
-	+	23
+	+	31
+	+	30
+	+	29	
", 
    what = list(character(), character(), numeric()),
    sep = "\t") 
datosf22 <- as.data.frame(datosf22)
colnames(datosf22) <- c("A", "B", "respuesta")
datosf22$replica <- rep(1:3, 4)
datosf22 |> 
  pivot_wider(id_cols = c("A", "B"), 
              names_from = "replica", 
              values_from = "respuesta") |> kable()
```



|A  |B  |  1|  2|  3|
|:--|:--|--:|--:|--:|
|-  |-  | 28| 25| 27|
|+  |-  | 36| 32| 32|
|-  |+  | 18| 19| 23|
|+  |+  | 31| 30| 29|



``` r
modelof22 <- lm(respuesta ~ A + B + A:B, data = datosf22)
anova(modelof22)
#> Analysis of Variance Table
#> 
#> Response: respuesta
#>           Df  Sum Sq Mean Sq F value    Pr(>F)    
#> A          1 208.333 208.333 53.1915 8.444e-05 ***
#> B          1  75.000  75.000 19.1489  0.002362 ** 
#> A:B        1   8.333   8.333  2.1277  0.182776    
#> Residuals  8  31.333   3.917                      
#> ---
#> Signif. codes:  
#> 0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```



``` r
library(lattice)
trellis.par.set(background = list(col = "white"))
plot(effect(term = "A", mod = modelof22))
#> NOTE: A is not a high-order term in the model
```

<img src="11-doe_files/figure-html/unnamed-chunk-4-1.png" width="672" />


``` r
plot(effect(term = "B", mod = modelof22))
#> NOTE: B is not a high-order term in the model
```

<img src="11-doe_files/figure-html/unnamed-chunk-5-1.png" width="672" />


``` r
plot(effect(term = "A:B", mod = modelof22))
```

<img src="11-doe_files/figure-html/unnamed-chunk-6-1.png" width="672" />



``` r
model.tables(aov(modelof22))
#> Tables of effects
#> 
#>  A 
#> A
#>      -      + 
#> -4.167  4.167 
#> 
#>  B 
#> B
#>    -    + 
#>  2.5 -2.5 
#> 
#>  A:B 
#>    B
#> A   -       +      
#>   -  0.8333 -0.8333
#>   + -0.8333  0.8333
```


::: {.rmdejemplo data-latex=""}
Vemos que los dos efectos principales son significativos, pero no lo es la interacción. Podemos eliminar ese término del modelo para así ganar grados de libertad y tener una mejor estimación del error.
:::


``` r
modelof22 <- lm(respuesta ~ A + B, data = datosf22)
anova(modelof22)
#> Analysis of Variance Table
#> 
#> Response: respuesta
#>           Df  Sum Sq Mean Sq F value    Pr(>F)    
#> A          1 208.333 208.333  47.269 7.265e-05 ***
#> B          1  75.000  75.000  17.017  0.002578 ** 
#> Residuals  9  39.667   4.407                      
#> ---
#> Signif. codes:  
#> 0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```


``` r
plot(effect(term = "A", mod = modelof22))
```

<img src="11-doe_files/figure-html/unnamed-chunk-9-1.png" width="672" />


``` r
plot(effect(term = "B", mod = modelof22))
```

<img src="11-doe_files/figure-html/unnamed-chunk-10-1.png" width="672" />

### Diseño factorial $2^3$

Modelo:

$$y_{ijkl} = \mu + \alpha_i + \beta_j + \gamma_k + \alpha\beta_{ij} 
+ \alpha\gamma_{ik}+ \beta\gamma_{jk} + \alpha\beta\gamma_{ijk} + \varepsilon_{ijkl}$$

De forma similar al diseño $2^2$, obtendríamos estimadores para los efectos principales y las interacciones. Si no tenemos réplicas, podemos omitir la interacción de orden 3 ya que rara vez es significativa, y así podremos estudiar los contrastes del resto de efectos.


::: {.rmdejemplo data-latex=""}
En el siguiente ejemplo, analizamos tres factores, pero omitimos la interacción de orden 3. Después, podríamos eliminar las interacciones menos significativas para quedarnos con el modelo más sencillo.
:::



``` r
datosf23 <- scan(text = "
-	-	-	60
+	-	-	72	
-	+	-	54
+	+	-	68
-	-	+	52
+	-	+	83
-	+	+	45
+	+	+	80
", 
    what = list(character(), character(), character(), numeric()),
    sep = "\t") 
datosf23 <- as.data.frame(datosf23)
colnames(datosf23) <- c("T", "C", "K", "rendimiento")
kable(datosf23)
```



|T  |C  |K  | rendimiento|
|:--|:--|:--|-----------:|
|-  |-  |-  |          60|
|+  |-  |-  |          72|
|-  |+  |-  |          54|
|+  |+  |-  |          68|
|-  |-  |+  |          52|
|+  |-  |+  |          83|
|-  |+  |+  |          45|
|+  |+  |+  |          80|



``` r
modelof23 <- lm(rendimiento ~ T + C + K + T:C + T:K + C:K, data = datosf23)
anova(modelof23)
#> Analysis of Variance Table
#> 
#> Response: rendimiento
#>           Df Sum Sq Mean Sq F value  Pr(>F)  
#> T          1 1058.0  1058.0    2116 0.01384 *
#> C          1   50.0    50.0     100 0.06345 .
#> K          1    4.5     4.5       9 0.20483  
#> T:C        1    4.5     4.5       9 0.20483  
#> T:K        1  200.0   200.0     400 0.03180 *
#> C:K        1    0.0     0.0       0 1.00000  
#> Residuals  1    0.5     0.5                  
#> ---
#> Signif. codes:  
#> 0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```


``` r
plot(effect(term = "T", mod = modelof23))
#> NOTE: T is not a high-order term in the model
```

<img src="11-doe_files/figure-html/unnamed-chunk-12-1.png" width="672" />

``` r

plot(effect(term = "C", mod = modelof23))
#> NOTE: C is not a high-order term in the model
```

<img src="11-doe_files/figure-html/unnamed-chunk-12-2.png" width="672" />

``` r
plot(effect(term = "K", mod = modelof23))
#> NOTE: K is not a high-order term in the model
```

<img src="11-doe_files/figure-html/unnamed-chunk-12-3.png" width="672" />

``` r
plot(effect(term = "T:C", mod = modelof23))
```

<img src="11-doe_files/figure-html/unnamed-chunk-12-4.png" width="672" />

``` r
plot(effect(term = "T:K", mod = modelof23))
```

<img src="11-doe_files/figure-html/unnamed-chunk-12-5.png" width="672" />

``` r
plot(effect(term = "C:K", mod = modelof23))
```

<img src="11-doe_files/figure-html/unnamed-chunk-12-6.png" width="672" />


``` r
model.tables(aov(modelof23))
#> Tables of effects
#> 
#>  T 
#> T
#>     -     + 
#> -11.5  11.5 
#> 
#>  C 
#> C
#>    -    + 
#>  2.5 -2.5 
#> 
#>  K 
#> K
#>     -     + 
#> -0.75  0.75 
#> 
#>  T:C 
#>    C
#> T   -     +    
#>   -  0.75 -0.75
#>   + -0.75  0.75
#> 
#>  T:K 
#>    K
#> T   -  + 
#>   -  5 -5
#>   + -5  5
#> 
#>  C:K 
#>    K
#> C   -           +          
#>   - -1.5439e-15  1.5439e-15
#>   +  1.5439e-15 -1.5439e-15
```


### Diseño factorial $2^k$

Siguiendo la misma estructura que los dos anteriores, con más efectos principales y más interacciones, pero más allá de 3 es muy difícil que se produzcan, y más difícil de interpretar.
El número de experimentos necesarios aumenta exponencialmente, y se suelen preferir experimentos fraccionados. Cuando no hay grados de libertad suficientes para realizar contrastes se utilizan herramientas gráficas para seleccionar efectos significativos, como el gráfico quantil-quantil de la distribución normal.


:::{.rmdejemplo data-latex=""}
El siguiente ejemplo aparece en @lawson2015. Se estudian 4 factores y no tenemos réplicas. Entonces, obtenemos estimadores pero no contrastes.
:::



``` r
library(daewr)
modf <- lm(y~A*B*C*D, data = chem)
summary(modf)
#> 
#> Call:
#> lm(formula = y ~ A * B * C * D, data = chem)
#> 
#> Residuals:
#> ALL 16 residuals are 0: no residual degrees of freedom!
#> 
#> Coefficients:
#>             Estimate Std. Error t value Pr(>|t|)
#> (Intercept)  62.3125        NaN     NaN      NaN
#> A            -6.3125        NaN     NaN      NaN
#> B            17.8125        NaN     NaN      NaN
#> C             0.1875        NaN     NaN      NaN
#> D             0.6875        NaN     NaN      NaN
#> A:B          -5.3125        NaN     NaN      NaN
#> A:C           0.8125        NaN     NaN      NaN
#> B:C          -0.3125        NaN     NaN      NaN
#> A:D           2.0625        NaN     NaN      NaN
#> B:D          -0.0625        NaN     NaN      NaN
#> C:D          -0.6875        NaN     NaN      NaN
#> A:B:C        -0.1875        NaN     NaN      NaN
#> A:B:D        -0.6875        NaN     NaN      NaN
#> A:C:D         2.4375        NaN     NaN      NaN
#> B:C:D        -0.4375        NaN     NaN      NaN
#> A:B:C:D      -0.3125        NaN     NaN      NaN
#> 
#> Residual standard error: NaN on 0 degrees of freedom
#> Multiple R-squared:      1,	Adjusted R-squared:    NaN 
#> F-statistic:   NaN on 15 and 0 DF,  p-value: NA
LGB(coef(modf)[-1])
```

<img src="11-doe_files/figure-html/unnamed-chunk-14-1.png" width="672" />

```
#> Effect Report 
#>    
#> Label     Half Effect    Sig(.05) 
#> A         -6.3125        yes        
#> B         17.8125        yes        
#> C          0.1875        no         
#> D          0.6875        no         
#> A:B       -5.3125        yes        
#> A:C        0.8125        no         
#> B:C       -0.3125        no         
#> A:D        2.0625        no         
#> B:D       -0.0625        no         
#> C:D       -0.6875        no         
#> A:B:C     -0.1875        no         
#> A:B:D     -0.6875        no         
#> A:C:D      2.4375        no         
#> B:C:D     -0.4375        no         
#> A:B:C:D   -0.3125        no         
#>    
#> Lawson, Grimshaw & Burt Rn Statistic =  3.006953 
#> 95th percentile of Rn =  1.201
```

El método de Lenth se basa en un contraste de significación que puede encontrarse detallado en @conklin2022design. Se calcula un _margin of error_ (ME). Los efectos más allá de ese margen serían significativos. Como se realizan muchos tests, algunos pueden ser identificados como significativos sin serlo. El _simultaneous margin of error_ (SME) tiene en cuenta esta multiplicidad de contrastes.































