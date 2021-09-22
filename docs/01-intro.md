# (PART) Estadística descriptiva {-}



# Introducción {#intro}




## Estadística y análisis de datos

Antes de introducirnos en el estudio de la Estadística y sus métodos, vamos a
intentar tener una visión de todo lo que abarca. Así pues, ¿qué es la Estadística?
La primera fuente que podemos consultar es la definición de la Real Academia Española,
y encontramos estas acepciones:

>**estadístico, ca**  
>_La forma f., del al. Statistik, y este der. del it. statista 'hombre de Estado'._
>
>1. adj. Perteneciente o relativo a la estadística.
>2. m. y f. Especialista en estadística.
>
>3. f. **Estudio de los datos** cuantitativos de la población, de los recursos naturales e industriales, del tráfico o de cualquier otra manifestación de las sociedades humanas.
>4. f. Conjunto de **datos** estadísticos.
>5. f. Rama de la matemática que utiliza grandes conjuntos de datos numéricos para obtener **inferencias** basadas en el **cálculo de probabilidades**.
>
> RAE

Las acepciones que nos interesan son sobre todo la tercera y la cuarta, en las 
que aparecen conceptos
que veremos en este capítulo introductorio y en los que profundizaremos en el resto
del libro. La tercera acepción, "Conjunto de **datos** estadísticos", es lo que muchas
personas entienden cuando oyen la palabra Estadística: La estadística del paro,
la estadística de los precios, etc. Pero la Estadística es mucho más amplia.
En primer lugar, esos "datos estadísticos" han tenido que ser recopilados y
tratados de alguna forma antes de llegar a su publicación. Además, los datos
estadísticos así entendidos son el resultado de un estudio pormenorizado
(acepción 3) y normalmente de la aplicación de técnicas de **inferencia**
(acepción 5). Algunas de estas técnicas forma parte de lo que vulgarmente
se conoce como "la cocina" de las estadísticas. 

Podemos hablar entonces de la Estadística, de forma muy resumida,
como la ciencia de analizar datos. Encontramos a menudo^[Por ejemplo en el [Curso de Estadística Práctica Aplicada a la Calidad](https://www.aec.es/formacion/catalogo-cursos/estadistica-practica-aplicada-la-calidad/) de la AEC.] una definición
de la Estadística como "la ciencia que establece los métodos necesarios para la recolección, organización, presentación y análisis de datos relativos a 
un conjunto de elementos o individuos". Pero esta definición se centra solo
en los métodos. Una definición más completa sería la siguiente:

> [...] la estadística es la parte de la matemática que estudia la **variabilidad** y el proceso aleatorio que la genera siguiendo leyes de **probabilidad**. 
>
> Esta variabilidad puede ser debida al azar, o bien estar producida por causas ajenas a él, correspondiendo al **razonamiento estadístico** diferenciar entre la variabilidad casual y la variabilidad causal.
>
>@oca 


Aquí vemos uno de los conceptos clave que guiará todo el estudio y aplicación de 
la Estadística: la variabilidad es la clave de todo. Entender el concepto de
variabilidad ayudará enormemente a entender los métodos por complejos que sean.

> Variation is the reason for being of statistics
>
> @cano2012sixsigma

La Estadística ha sido siempre importante en los estudios de Ciencias e 
Ingeniería. No obstante, en los últimos tiempos la alta disponibilidad
tanto de datos como de tecnología para tratarlos, hace imprescindible
un dominio de las técnicas estadísticas y su aplicación en el dominio
específico.

## Los dos grandes bloques de la Estadística

La Estadística se divide en dos grandes bloques de estudio, que son 
la **Estadística Descriptiva** y la **Inferencia Estadística**. A la
Estadística Descriptiva también se la conoce como *Análisis Exploratorio de Datos*
(EDA, _Exploratory Data Analysis_, por sus siglas en inglés).
Esta disciplina tuvo un gran desarrollo gracias al trabajo de Tukey [@tukey1977exploratory],
que todavía hoy es una referencia. Pero en los últimos años ha cobrado si cabe
más importancia por la alta disponibilidad de datos y la necesidad de analizarlos.

La **Estadística Descriptiva** se aplica sobre un conjunto de datos concretos,
del que obtenemos resúmenes numéricos y visualización de datos a través de
los gráficos apropiados. Con la Estadística Descriptiva se identifican **relaciones**
y **patrones**, guiando el trabajo posterior de la Inferencia Estadística.

La **Estadística Inferencial** utiliza los datos y su análisis anterior para, a través de las
Leyes de la **Probabilidad**, obtener conclusiones de diverso tipo, como explicación de fenómenos,
confirmación de relaciones de causa-efecto, realizar predicciones o comparar grupos.
En definitiva, tomar decisiones por medio de modelos estadísticos y basadas en
los datos.


## La esencia de la Estadística

La figura \@ref(fig:dogma1) representa
la esencia de la Estadística y sus métodos. Estudiamos alguna **característica** 
observable en una serie de **elementos** (sujetos, individuos, ...)
identificables y únicos. Los datos que analizamos,
provienen de una determinada **población** que es objeto de estudio. 
Pero estos datos, no son más que
una **muestra**, es decir, un subconjunto representativo de la población. Incluso
cuando "creemos" que tenemos todos los datos, debemos tener presente que trabajamos
con muestras, ya que generalmente tomaremos decisiones o llegaremos a conclusiones
sobre el futuro, y esos datos seguro que no los tenemos. Por eso es importante
considerar siempre este paradigma población-muestra, donde la
población es desconocida y sus propiedades teóricas. La **Estadística Descriptiva**
se ocupa del análisis exploratorio de datos en sentido amplio, que aplicaremos
sobre los datos concretos de la muestra en este unidad y la siguiente. La
**Inferencia Estadística** hace referencia a los métodos mediante los cuales,
a través de los datos de la muestra, tomaremos decisiones, explicaremos relaciones,
o haremos predicciones sobre la población. Para ello, haremos uso de la 
**Probabilidad**, que veremos más adelante, aplicando
el método más adecuado. 
En estos métodos será muy importante considerar el método de obtención de la muestra
que, en términos generales, debe ser representativa de la población para que las
conclusiones sean válidas.


<div class="figure" style="text-align: center">
<img src="images/dogma1.png" alt="La esencia de los métodos estadísticos" width="100%" />
<p class="caption">(\#fig:dogma1)La esencia de los métodos estadísticos</p>
</div>

::: {.rmdejemplo data-latex=""}

`<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:purple;overflow:visible;position:relative;"><path d="M511,102.93A23.76,23.76,0,0,0,481.47,87l-15.12,4.48a111.85,111.85,0,0,0-48.5-47.42l3.79-14.47a23.74,23.74,0,0,0-46-11.91l-3.76,14.37a111.94,111.94,0,0,0-22.33,1.47,386.74,386.74,0,0,0-44.33,10.41l-4.3-12a23.74,23.74,0,0,0-44.75,15.85l4.3,12.05a383.4,383.4,0,0,0-58.69,31.83l-8-10.63a23.85,23.85,0,0,0-33.24-4.8,23.57,23.57,0,0,0-4.83,33.09l8,10.63a386.14,386.14,0,0,0-46.7,47.44l-11-8a23.68,23.68,0,1,0-28,38.17l11.09,8.06a383.45,383.45,0,0,0-30.92,58.75l-12.93-4.43a23.65,23.65,0,1,0-15.47,44.69l13,4.48a385.81,385.81,0,0,0-9.3,40.53A111.58,111.58,0,0,0,32.44,375L17,379.56a23.64,23.64,0,0,0,13.51,45.31l15-4.44a111.49,111.49,0,0,0,48.53,47.24l-3.85,14.75a23.66,23.66,0,0,0,17,28.83,24.7,24.7,0,0,0,6,.75,23.73,23.73,0,0,0,23-17.7L140,479.67c1.37.05,2.77.35,4.13.35A111.22,111.22,0,0,0,205,461.5l11.45,11.74a23.7,23.7,0,0,0,34.08-32.93l-12.19-12.5a111,111,0,0,0,16.11-41.4,158.69,158.69,0,0,1,5.16-20.71l12,5.64a23.66,23.66,0,1,0,20.19-42.79l-11.72-5.49c.89-1.32,1.59-2.77,2.52-4.06a157.86,157.86,0,0,1,10.46-12.49,159.5,159.5,0,0,1,15.59-15.28,162.18,162.18,0,0,1,13.23-10.4c1.5-1,3.1-1.89,4.63-2.87l5.23,11.8a23.74,23.74,0,0,0,43.48-19.08l-5.36-12.11a158.87,158.87,0,0,1,16.49-4.1,111,111,0,0,0,45-18.54l13.33,12a23.69,23.69,0,1,0,31.88-35l-12.94-11.67A110.83,110.83,0,0,0,479.21,137L495,132.32A23.61,23.61,0,0,0,511,102.93ZM160,368a48,48,0,1,1,48-48A48,48,0,0,1,160,368Zm80-136a24,24,0,1,1,24-24A24,24,0,0,1,240,232Z"/></svg>`{=html} En un ensayo clínico, se eligen una serie de participantes en el estudio a los
que se le suministran distintos tratamientos según el diseño del ensayo. 
Los participantes en el estudio son sujetos que constituyen la **muestra**.
A través de los resultados de esta muestra, obtendremos conclusiones
para toda la **población**, que estará definida en el propio ensayo clínico.
Por ejemplo, en el estudio del efecto de un determinado tratamiento para la
diabetes, la población serían todos los enfermos de diabetes.

:::


Otro concepto clave inherente a la Estadística, es que casi siempre estaremos
investigando sobre esta fórmula:

$$Y=f(X)$$

Es decir, buscamos encontrar la relación entre una variable respuesta $Y$ y una o varias
variables explicativas $X$. Casi toda la Ciencia de Datos consiste en encontrar esa $f$.
Es fundamental interiorizar este concepto para después aplicar el método adecuado,
ya que según sean la/s $Y$, la/s $X$ y el objetivo de nuestro estudio, los caminos
pueden ser muy diferentes. 


## Tipos de datos

Las **características** que observamos en los **elementos** de la muestra
(o que estudiamos en una población) pueden ser distintos tipos. Nos referiremos
genéricamente a estas características como **variables**, aunque en en algunos
ámbitos como el Control Estadístico de Procesos (SPC, _Statistical Process Control_
por sus siglas en inglés) este término se refiere solo a las variables continuas
que ahora definiremos.

Denotaremos las variables con letras mayúsculas del alfabeto latino ($X$, $Y$, $A$, ...).
Cuando observamos la característica, la variable toma un **valor**. Estos valores
pueden ser agrupados en **clases**, de forma que cada posible valor
pertenezca a una y solo una clase. En ocasiones los datos con los que trabajamos
están ya clasificados en clases. 

::: {.rmdejemplo data-latex=""}

Cuando se recogen datos utilizando cuestionarios, a menudo en las preguntas
para recoger características cuantitativas se ofrece elegir un intervalo en vez
de peguntar el **valor** exacto. Por ejemplo, al preguntar la edad de una
persona, se pueden dar las opciones: 1) menos de 20 años; 2) entre 20 y 40 años;
3) entre 40 y 60 años; 4)Más de 60 años. Así, si una persona tiene 30 años, el **valor**
de la variable es 30 (en el caso de la encuesta no lo conoceremos exactamente)
que pertenece a la **clase** "entre 20 y 40 años".

:::

Datos univariantes, bivariantes, multivariantes

La importancia de la variabilidad

Calidad y Estadística

Inferencia Estadística y sus técnicas

Ciencia de Datos, Big Data y otras chuches

ODS: algo


* Pueden tomar cualquier valor en su **dominio** (conjunto de .red[**posibles**] valores que puede tomar la variable)


.media.centrado[Siguen una distribución de **probabilidad**]


## Parámetros y Estadísticos


## Parámetros

* Se definen sobre la **población**

* [Casi] siempre desconocidos

* Valores teóricos

* Sobre los que haremos inferencia

* Letras griegas


## Estadísticos

* Función definida sobre los datos de una **muestra** (valores de una o más variables)

* En cada muestra serán distintos (variabilidad)

* Siguen una **distribución** en el muestreo

* Letras latinas

background-image: url(./images/dogma2.png)

## La esencia de la Estadística

background-image: url(images/tidy_data.png)

## Organización de los datos - _Tidy data_

- Datos rectangulares

- Una columna para cada variable (mismo tipo de datos)

- Una fila para cada observación (elemento, individuo)


.idea[![](./images/idea.png)] Analista y software deben entender lo mismo

background-image: url(images/rectangular.png)

## Ejemplo: datos bien organizados

- Separar la capa de datos de las capas de presentación y lógica
- Datos para humanos vs datos para máquinas
- El análisis posterior se simplifica si se preparan los datos para la máquina
- Importancia de los .red[metadatos] (diccionarios de datos)


## Tipos de variables 

*  Cuantitativas o Numéricas
  + Continuas
  + Discretas
  
* Cualitativas o Categóricas
  + Multinivel
  + Dicotómicas
  + Ordinales

* Marcas de tiempo e identificadores


## Escalas

* Nominal: atributos, factores, etiquetas
  
* Ordinal: atributos con un orden lógico

* Métrica: Permiten medir diferencias entre individuos


## Conversión

* Fechas a categóricas (por ejemplo, mes, día de la semana, ...)
* Cualitativas a discretas (clases)
* Ordinales como numérica: cuidado, sobre todo si hay pocos datos (<100). Mejor
combinar en índices
* Variables calculadas con otras (por ejemplo, IMC)



## 2. La Estadística y el método científico


## Bioestadística

## La Estadística aplicada a la Biología

* Cualquier análisis de datos, como cualquier disciplina.

* Énfasis en:

  + Diseños experimentales
  + Ensayos clínicos
  + Análisis genómico (vínculo con Bioinformática)

background-image: url(images/mc.jpg)

## El método científico

1. Hacerse una pregunta

2. Realizar investigación de base

3. Plantear una hipótesis

4. Comprobar la hipótesis con experimentos

5. Analizar resultados y extraer conclusiones

6. Comunicar resultados

.footnote2[Fuente: [Wikimedia commons](https://commons.wikimedia.org/wiki/File:Método_cient%C3%ADfico_2021.jpg)]


## 2. Investigación de base

* Análisis exploratorio de datos

* Identificar relaciones

* Posiblemente, cambiar la pregunta del primer paso


## 3. Plantear una hipótesis

* Formalizarla en términos de Hipóteis nula, $H_0$, e hipótesis alternativa, $H_1$

* El planteamiento de la hipótesis determina
el método estadístico a utilizar, y el diseño
del experimento (en sentido amplio)


## 4. Comprobar la hipótesis con experimentos

* El diseño adecuado es fundamental para que los
resultados sean válidos

* Correcta organización de datos recogidos,
protocolos establecidos

* Aleatorización, bloqueo, etc.


## 5. Analizar resultados y extraer conclusiones

* Análisis exploratorio

* Contrastes de hipótesis

* Validación de los modelos


## 6. Comunicar resultados

* Informes reproducibles (RMarkdown)

* Gráficos efectivos

* Resultados clave

* Resultados negativos


## 3. Estadística, Calidad y Sostenibilidad

## Control Estadístico de la Calidad

.center.huge[La .red[Estadística] es una herramienta fundamental en muchos procedimientos
relacionados con la Calidad.
]


## Calidad y variabilidad

> **Calidad:** Grado en el que un conjunto de .red[características] inherentes de un objeto
> cumple con los .red[requisitos]
>
> ISO 9001:2015 3.6.2

Los requisitos son .red[**especificaciones**] de la característica, que pueden ser bilaterales o unilaterales.


background-image: url(images/histos-1.png)

## La media y la variabilidad

--

Misma media, distinta capacidad de proceso

???


background-image: url(images/taguchi-1.png)

## Función de pérdida de Taguchi

--

> La Calidad se mide como la pérdida total que un producto causa a la sociedad
>
> Genichi Taguchi


 

background-image: url(images/spc.png)

## SPC: _Statistical Process Control_

.pull-left[
* Gráficos decontrol

* Análisis de la capacidad del proceso

* Combinados con otras técnicas estadísticas
]


background-image: url(images/qcpass.png)

## Inspección por muestreo

* AKA Muestreos de aceptación

* Aceptación: dentro de los límites de especificación
* Por atributos y por variables
* La base: probabilidad de aceptar/rechazar un lote defectuoso/correcto

* Muestreos por lotes
* Planes simples
* Planes dobles y múltiples
* Planes secuenciales
* MIL-STD -> ISO 2859

background-image: url(images/micro.jpg)
## Ensayos inter-laboratorios

* Análisis del sistema de medición (MSA, _Measurement Systems Analysis_)

* Estudios de precisión y exactitud

* Estudios R&R (_Reproducibility & Repeatibility_)

* Validación de laboratorios

* Se utiliza Diseño y Análisis de Experimentos

.footnote2[Imagen de [Konstantin Kolosov](https://pixabay.com/es/users/kkolosov-2105326/?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=2030265) en Pixabay]

class: large

## Metodologías y estándares

* ISO TC69 + UNE CT66/SC3

* Metodología Seis Sigma y el ciclo DMAIC

* Lean Six Sigma

* ISO 9000 + UNE-ISO TR 1017 (Orientación sobre las técnicas estadísticas para la Norma ISO 9001:2020)

.idea[![](images/idea.png) En la biblioteca de la URJC tenéis disponible la coleccción de normas UNE]

## Objetivos de Desarrollo Sostenible (ODS)

* Iniciativa de la ONU: _Sustainable Development Goals_ (SDG)
* 17 objetivos
* 169 metas

> El 25 de septiembre de 2015, los líderes mundiales adoptaron un conjunto de .red[**objetivos globales**] para erradicar la pobreza, proteger el planeta y asegurar la prosperidad para todos como parte de una nueva agenda de desarrollo sostenible. Cada objetivo tiene .red[**metas específicas**] que deben alcanzarse en los próximos 15 años.
>
> [Naciones Unidas](https://www.un.org/sustainabledevelopment/es/objetivos-de-desarrollo-sostenible/)

background-image: url(./images/ods.jpg)

## ODS

.footnote2[Fuente: un.org]


## Bioestadística y sostenibilidad

* Analizar datos relacionados con los ODS (Investigar)

* Ser sostenible en los análisis

* Relacionar con ODS e intentar contribuir sea cual sea el objetivo de la 
investigación

* ¿Cómo puede contribuir este trabajo/estudio/investigación/...  
a conseguir los Objetivos de Desarrollo Sostenible?



