
```r
knitr::opts_chunk$set(echo = TRUE, message = FALSE, warning = FALSE, comment = "")
library(tidyverse)
#> ── Attaching packages ─────────────────── tidyverse 1.3.2 ──
#> ✔ ggplot2 3.4.1     ✔ purrr   1.0.1
#> ✔ tibble  3.1.8     ✔ dplyr   1.1.0
#> ✔ tidyr   1.3.0     ✔ stringr 1.5.0
#> ✔ readr   2.1.3     ✔ forcats 0.5.2
#> ── Conflicts ────────────────────── tidyverse_conflicts() ──
#> ✖ purrr::compose() masks flextable::compose()
#> ✖ dplyr::filter()  masks stats::filter()
#> ✖ dplyr::lag()     masks stats::lag()
library(knitr)
library(flextable)
library(gt)
library(gridExtra)
#> 
#> Attaching package: 'gridExtra'
#> 
#> The following object is masked from 'package:dplyr':
#> 
#>     combine
library(equatiomatic)
```

# Análisis exploratorio bivariante {#aed-bi}





## Datos bivariantes y multivariantes

El análisis univariante es muy útil para describir una única característica de la 
población en estudio. Pero rara vez estudiamos una característica aislada, y lo
habitual es tener conjuntos de datos con varias variables (cuantitativas y cualitativas)
que podemos estudiar por separado (análisis univariante) o conjuntamente (análisis multivariante).

El caso especial del **análisis bivariante** es cuando estudiamos dos características a la vez: $X, Y$.
Nos interesa la **relación** entre ellas, para lo que realizaremos resúmenes numéricos y gráficos.
Los datos bivariantes se encontrarán como pares de valores $(x_i, y_i)$ para cada
observación $i = 1, \ldots, n$.

Cuando estudiamos más de dos variables, tenemos datos multivariantes. En este caso,
estudiamos las relaciones "dos a dos" entre las variables (como en el caso bivariante) y 
la estructura conjunta. Hay algunas técnicas multivariantes específicas para este último caso.
En este capítulo nos vamos a centrar solo en el primer caso.

## Frecuencias conjuntas, marginales y condicionadas

El primer resumen que podemos hacer de datos bivariante es la tabla de frecuencias conjunta.
Igual que en el caso univariante $n$ es número total de datos, es decir, la frecuencia total.
La frecuencia absoluta conjunta, $n_{ij}$, es el número de observaciones en la clase $i$ de $X$ **y** en la clase $j$ de $Y$.
La frecuencia relativa conjunta es $f_{ij}= \frac{n_{ij}}{n}$.


### Distribución conjunta de frecuencias

Las frecuencias conjuntas se representan en una tabla de doble entrada, 
con los valores de una variable en filas y los de la otra en columnas.
En el interior, se ponen las frecuencias conjuntas (absolutas, relativas o ambas).
Si las dos variables son cualitativas, la tabla se denomina **Tabla de contingencia**.




:::{.rmdejemplo data-latex=""}
La Tabla \@ref(tab:tabs) muestra la tabla de contingencia de los analistas y el tipo de queso en el ejemplo del análisis de la producción de quesos. Asignamos la variable $X$ al Analista (en filas) y la variable $Y$ al Tipo (en columnas).
La Tabla \@ref(tab:trel) muestra la tabla de frecuencias relativas de los mismos datos. El número total de datos es
$n= 1171$.
:::



Table: (\#tab:tabs)Tabla de contingencia (frecuencias absolutas) de los analistas y el tipo de queso.

|            |  A|  B|   C|
|:-----------|--:|--:|---:|
|analista_10 | 52| 47| 219|
|analista_13 | 42| 36| 198|
|analista_6  | 44| 32| 235|
|analista_9  | 37| 33| 196|



Table: (\#tab:trel)Tabla de frecuencias relativas de los analistas y el tipo de queso.

|            |    A|    B|    C|
|:-----------|----:|----:|----:|
|analista_10 | 0.04| 0.04| 0.19|
|analista_13 | 0.04| 0.03| 0.17|
|analista_6  | 0.04| 0.03| 0.20|
|analista_9  | 0.03| 0.03| 0.17|




En el caso de variables continuas, debemos tener los datos agrupados en intervalos (clases).


:::{.rmdejemplo data-latex=""}

La tabla \@ref(tab:tcont) contiene las frecuencias absolutas conjuntas
de las variables:

* $X$ = ph (filas); 

* $Y$ = est (columnas)

:::








Table: (\#tab:tcont)Tabla de frecuencias conjunta del pH y el extracto seco total agrupadas en intervalos.

|           | (28,30]| (30,32]| (32,34]| (34,36]| (36,38]|
|:----------|-------:|-------:|-------:|-------:|-------:|
|(6.35,6.4] |       0|       0|       1|       0|       0|
|(6.4,6.45] |       0|       0|       0|       0|       0|
|(6.45,6.5] |       1|       2|       0|       0|       0|
|(6.5,6.55] |       3|      50|       1|       0|       0|
|(6.55,6.6] |      17|     129|      36|       2|       0|
|(6.6,6.65] |      18|     195|     167|      20|       4|
|(6.65,6.7] |       9|     160|     182|      18|       0|
|(6.7,6.75] |       2|      53|      70|       4|       0|
|(6.75,6.8] |       0|       9|      10|       2|       0|
|(6.8,6.85] |       0|       4|       1|       0|       1|




### Distribución marginal

Si partimos de la distribución conjunta, podemos obtener la de cada
una de las variables (marginal) y estudiarla como datos univariantes.
Basta con hacer las sumas por filas (para la marginal de $X$), o por columnas, (para la marginal de $Y$):

* Frecuencias marginales de $X$: 
  + Absolutas: $n_{i\cdot} = \sum\limits_{j = 1}^{n_j}n_{ij}$
  + Relativas: $f_{i\cdot} = \sum\limits_{j = 1}^{n_j}f_{ij}$
  
* Frecuencias marginales de $Y$: 
  + $n_{\cdot j} = \sum\limits_{i = 1}^{n_i}n_{ij}$
  + $f_{\cdot j} = \sum\limits_{i = 1}^{n_i}f_{ij}$

donde $n_i$ es el número de clases de la variable $X$ y $n_j$ es el 
número de clases de la variable $Y$. Análogamente, para frecuencias marginales relativas sumamos las frecuencias relativas conjuntas,
o bien dividimos las frecuencias absolutas marginales entre el número total de datos $n$.




:::{.rmdejemplo data-latex=""}
La tabla \@ref(tab:tmar) contiene las frecuencias marginales como suma de filas y
columnas de la distribución conjunta en la tabla \@ref(tab:tcont). Las distribuciones
marginales de $X$ y de $Y$ por separado se muestran en las tablas \@ref(tab:tmarx) y \@ref(tab:tmary)
respectivamente.
:::



```{=html}
<div id="icgrkhcawd" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#icgrkhcawd .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#icgrkhcawd .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#icgrkhcawd .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#icgrkhcawd .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#icgrkhcawd .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#icgrkhcawd .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#icgrkhcawd .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#icgrkhcawd .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#icgrkhcawd .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#icgrkhcawd .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#icgrkhcawd .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#icgrkhcawd .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#icgrkhcawd .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#icgrkhcawd .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#icgrkhcawd .gt_from_md > :first-child {
  margin-top: 0;
}

#icgrkhcawd .gt_from_md > :last-child {
  margin-bottom: 0;
}

#icgrkhcawd .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#icgrkhcawd .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#icgrkhcawd .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#icgrkhcawd .gt_row_group_first td {
  border-top-width: 2px;
}

#icgrkhcawd .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#icgrkhcawd .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#icgrkhcawd .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#icgrkhcawd .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#icgrkhcawd .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#icgrkhcawd .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#icgrkhcawd .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#icgrkhcawd .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#icgrkhcawd .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#icgrkhcawd .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#icgrkhcawd .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#icgrkhcawd .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#icgrkhcawd .gt_left {
  text-align: left;
}

#icgrkhcawd .gt_center {
  text-align: center;
}

#icgrkhcawd .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#icgrkhcawd .gt_font_normal {
  font-weight: normal;
}

#icgrkhcawd .gt_font_bold {
  font-weight: bold;
}

#icgrkhcawd .gt_font_italic {
  font-style: italic;
}

#icgrkhcawd .gt_super {
  font-size: 65%;
}

#icgrkhcawd .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#icgrkhcawd .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#icgrkhcawd .gt_indent_1 {
  text-indent: 5px;
}

#icgrkhcawd .gt_indent_2 {
  text-indent: 10px;
}

#icgrkhcawd .gt_indent_3 {
  text-indent: 15px;
}

#icgrkhcawd .gt_indent_4 {
  text-indent: 20px;
}

#icgrkhcawd .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table">
  <caption>(#tab:tmar)Frecuencias marginales como suma de filas y columnas de la distribución conjunta</caption>
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="X\Y">X\Y</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="(28,30]">(28,30]</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="(30,32]">(30,32]</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="(32,34]">(32,34]</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="(34,36]">(34,36]</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="(36,38]">(36,38]</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Sum">Sum</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="X\Y" class="gt_row gt_left">(6.35,6.4]</td>
<td headers="(28,30]" class="gt_row gt_right">0</td>
<td headers="(30,32]" class="gt_row gt_right">0</td>
<td headers="(32,34]" class="gt_row gt_right">1</td>
<td headers="(34,36]" class="gt_row gt_right">0</td>
<td headers="(36,38]" class="gt_row gt_right">0</td>
<td headers="Sum" class="gt_row gt_right" style="font-weight: bold;">1</td></tr>
    <tr><td headers="X\Y" class="gt_row gt_left">(6.4,6.45]</td>
<td headers="(28,30]" class="gt_row gt_right">0</td>
<td headers="(30,32]" class="gt_row gt_right">0</td>
<td headers="(32,34]" class="gt_row gt_right">0</td>
<td headers="(34,36]" class="gt_row gt_right">0</td>
<td headers="(36,38]" class="gt_row gt_right">0</td>
<td headers="Sum" class="gt_row gt_right" style="font-weight: bold;">0</td></tr>
    <tr><td headers="X\Y" class="gt_row gt_left">(6.45,6.5]</td>
<td headers="(28,30]" class="gt_row gt_right">1</td>
<td headers="(30,32]" class="gt_row gt_right">2</td>
<td headers="(32,34]" class="gt_row gt_right">0</td>
<td headers="(34,36]" class="gt_row gt_right">0</td>
<td headers="(36,38]" class="gt_row gt_right">0</td>
<td headers="Sum" class="gt_row gt_right" style="font-weight: bold;">3</td></tr>
    <tr><td headers="X\Y" class="gt_row gt_left">(6.5,6.55]</td>
<td headers="(28,30]" class="gt_row gt_right">3</td>
<td headers="(30,32]" class="gt_row gt_right">50</td>
<td headers="(32,34]" class="gt_row gt_right">1</td>
<td headers="(34,36]" class="gt_row gt_right">0</td>
<td headers="(36,38]" class="gt_row gt_right">0</td>
<td headers="Sum" class="gt_row gt_right" style="font-weight: bold;">54</td></tr>
    <tr><td headers="X\Y" class="gt_row gt_left">(6.55,6.6]</td>
<td headers="(28,30]" class="gt_row gt_right">17</td>
<td headers="(30,32]" class="gt_row gt_right">129</td>
<td headers="(32,34]" class="gt_row gt_right">36</td>
<td headers="(34,36]" class="gt_row gt_right">2</td>
<td headers="(36,38]" class="gt_row gt_right">0</td>
<td headers="Sum" class="gt_row gt_right" style="font-weight: bold;">184</td></tr>
    <tr><td headers="X\Y" class="gt_row gt_left">(6.6,6.65]</td>
<td headers="(28,30]" class="gt_row gt_right">18</td>
<td headers="(30,32]" class="gt_row gt_right">195</td>
<td headers="(32,34]" class="gt_row gt_right">167</td>
<td headers="(34,36]" class="gt_row gt_right">20</td>
<td headers="(36,38]" class="gt_row gt_right">4</td>
<td headers="Sum" class="gt_row gt_right" style="font-weight: bold;">404</td></tr>
    <tr><td headers="X\Y" class="gt_row gt_left">(6.65,6.7]</td>
<td headers="(28,30]" class="gt_row gt_right">9</td>
<td headers="(30,32]" class="gt_row gt_right">160</td>
<td headers="(32,34]" class="gt_row gt_right">182</td>
<td headers="(34,36]" class="gt_row gt_right">18</td>
<td headers="(36,38]" class="gt_row gt_right">0</td>
<td headers="Sum" class="gt_row gt_right" style="font-weight: bold;">369</td></tr>
    <tr><td headers="X\Y" class="gt_row gt_left">(6.7,6.75]</td>
<td headers="(28,30]" class="gt_row gt_right">2</td>
<td headers="(30,32]" class="gt_row gt_right">53</td>
<td headers="(32,34]" class="gt_row gt_right">70</td>
<td headers="(34,36]" class="gt_row gt_right">4</td>
<td headers="(36,38]" class="gt_row gt_right">0</td>
<td headers="Sum" class="gt_row gt_right" style="font-weight: bold;">129</td></tr>
    <tr><td headers="X\Y" class="gt_row gt_left">(6.75,6.8]</td>
<td headers="(28,30]" class="gt_row gt_right">0</td>
<td headers="(30,32]" class="gt_row gt_right">9</td>
<td headers="(32,34]" class="gt_row gt_right">10</td>
<td headers="(34,36]" class="gt_row gt_right">2</td>
<td headers="(36,38]" class="gt_row gt_right">0</td>
<td headers="Sum" class="gt_row gt_right" style="font-weight: bold;">21</td></tr>
    <tr><td headers="X\Y" class="gt_row gt_left">(6.8,6.85]</td>
<td headers="(28,30]" class="gt_row gt_right">0</td>
<td headers="(30,32]" class="gt_row gt_right">4</td>
<td headers="(32,34]" class="gt_row gt_right">1</td>
<td headers="(34,36]" class="gt_row gt_right">0</td>
<td headers="(36,38]" class="gt_row gt_right">1</td>
<td headers="Sum" class="gt_row gt_right" style="font-weight: bold;">6</td></tr>
    <tr><td headers="X\Y" class="gt_row gt_left" style="font-weight: bold;">Sum</td>
<td headers="(28,30]" class="gt_row gt_right" style="font-weight: bold;">50</td>
<td headers="(30,32]" class="gt_row gt_right" style="font-weight: bold;">602</td>
<td headers="(32,34]" class="gt_row gt_right" style="font-weight: bold;">468</td>
<td headers="(34,36]" class="gt_row gt_right" style="font-weight: bold;">46</td>
<td headers="(36,38]" class="gt_row gt_right" style="font-weight: bold;">5</td>
<td headers="Sum" class="gt_row gt_right" style="font-weight: bold;">1171</td></tr>
  </tbody>
  
  
</table>
</div>
```




```{=html}
<div id="ahhhhgxkuz" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#ahhhhgxkuz .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#ahhhhgxkuz .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#ahhhhgxkuz .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#ahhhhgxkuz .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#ahhhhgxkuz .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#ahhhhgxkuz .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ahhhhgxkuz .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#ahhhhgxkuz .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#ahhhhgxkuz .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#ahhhhgxkuz .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#ahhhhgxkuz .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#ahhhhgxkuz .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#ahhhhgxkuz .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#ahhhhgxkuz .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#ahhhhgxkuz .gt_from_md > :first-child {
  margin-top: 0;
}

#ahhhhgxkuz .gt_from_md > :last-child {
  margin-bottom: 0;
}

#ahhhhgxkuz .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#ahhhhgxkuz .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#ahhhhgxkuz .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#ahhhhgxkuz .gt_row_group_first td {
  border-top-width: 2px;
}

#ahhhhgxkuz .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ahhhhgxkuz .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#ahhhhgxkuz .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#ahhhhgxkuz .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ahhhhgxkuz .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ahhhhgxkuz .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#ahhhhgxkuz .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#ahhhhgxkuz .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ahhhhgxkuz .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#ahhhhgxkuz .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#ahhhhgxkuz .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#ahhhhgxkuz .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#ahhhhgxkuz .gt_left {
  text-align: left;
}

#ahhhhgxkuz .gt_center {
  text-align: center;
}

#ahhhhgxkuz .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#ahhhhgxkuz .gt_font_normal {
  font-weight: normal;
}

#ahhhhgxkuz .gt_font_bold {
  font-weight: bold;
}

#ahhhhgxkuz .gt_font_italic {
  font-style: italic;
}

#ahhhhgxkuz .gt_super {
  font-size: 65%;
}

#ahhhhgxkuz .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#ahhhhgxkuz .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#ahhhhgxkuz .gt_indent_1 {
  text-indent: 5px;
}

#ahhhhgxkuz .gt_indent_2 {
  text-indent: 10px;
}

#ahhhhgxkuz .gt_indent_3 {
  text-indent: 15px;
}

#ahhhhgxkuz .gt_indent_4 {
  text-indent: 20px;
}

#ahhhhgxkuz .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table">
  <caption>(#tab:tmarx)Frecuencias marginales de X (pH)</caption>
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="\(x_i\)">\(x_i\)</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="\(n_{i·}\)">\(n_{i·}\)</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="\(f_{i·}\)">\(f_{i·}\)</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="X\Y" class="gt_row gt_left">(6.35,6.4]</td>
<td headers="Sum" class="gt_row gt_right">1</td>
<td headers="rel" class="gt_row gt_right">0.001</td></tr>
    <tr><td headers="X\Y" class="gt_row gt_left">(6.4,6.45]</td>
<td headers="Sum" class="gt_row gt_right">0</td>
<td headers="rel" class="gt_row gt_right">0.000</td></tr>
    <tr><td headers="X\Y" class="gt_row gt_left">(6.45,6.5]</td>
<td headers="Sum" class="gt_row gt_right">3</td>
<td headers="rel" class="gt_row gt_right">0.003</td></tr>
    <tr><td headers="X\Y" class="gt_row gt_left">(6.5,6.55]</td>
<td headers="Sum" class="gt_row gt_right">54</td>
<td headers="rel" class="gt_row gt_right">0.046</td></tr>
    <tr><td headers="X\Y" class="gt_row gt_left">(6.55,6.6]</td>
<td headers="Sum" class="gt_row gt_right">184</td>
<td headers="rel" class="gt_row gt_right">0.157</td></tr>
    <tr><td headers="X\Y" class="gt_row gt_left">(6.6,6.65]</td>
<td headers="Sum" class="gt_row gt_right">404</td>
<td headers="rel" class="gt_row gt_right">0.345</td></tr>
    <tr><td headers="X\Y" class="gt_row gt_left">(6.65,6.7]</td>
<td headers="Sum" class="gt_row gt_right">369</td>
<td headers="rel" class="gt_row gt_right">0.315</td></tr>
    <tr><td headers="X\Y" class="gt_row gt_left">(6.7,6.75]</td>
<td headers="Sum" class="gt_row gt_right">129</td>
<td headers="rel" class="gt_row gt_right">0.110</td></tr>
    <tr><td headers="X\Y" class="gt_row gt_left">(6.75,6.8]</td>
<td headers="Sum" class="gt_row gt_right">21</td>
<td headers="rel" class="gt_row gt_right">0.018</td></tr>
    <tr><td headers="X\Y" class="gt_row gt_left">(6.8,6.85]</td>
<td headers="Sum" class="gt_row gt_right">6</td>
<td headers="rel" class="gt_row gt_right">0.005</td></tr>
    <tr><td headers="X\Y" class="gt_row gt_left">Sum</td>
<td headers="Sum" class="gt_row gt_right">1171</td>
<td headers="rel" class="gt_row gt_right">1.000</td></tr>
  </tbody>
  
  
</table>
</div>
```



```{=html}
<div id="nujywtayhg" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#nujywtayhg .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#nujywtayhg .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#nujywtayhg .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#nujywtayhg .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#nujywtayhg .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#nujywtayhg .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#nujywtayhg .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#nujywtayhg .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#nujywtayhg .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#nujywtayhg .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#nujywtayhg .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#nujywtayhg .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#nujywtayhg .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#nujywtayhg .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#nujywtayhg .gt_from_md > :first-child {
  margin-top: 0;
}

#nujywtayhg .gt_from_md > :last-child {
  margin-bottom: 0;
}

#nujywtayhg .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#nujywtayhg .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#nujywtayhg .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#nujywtayhg .gt_row_group_first td {
  border-top-width: 2px;
}

#nujywtayhg .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#nujywtayhg .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#nujywtayhg .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#nujywtayhg .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#nujywtayhg .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#nujywtayhg .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#nujywtayhg .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#nujywtayhg .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#nujywtayhg .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#nujywtayhg .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#nujywtayhg .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#nujywtayhg .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#nujywtayhg .gt_left {
  text-align: left;
}

#nujywtayhg .gt_center {
  text-align: center;
}

#nujywtayhg .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#nujywtayhg .gt_font_normal {
  font-weight: normal;
}

#nujywtayhg .gt_font_bold {
  font-weight: bold;
}

#nujywtayhg .gt_font_italic {
  font-style: italic;
}

#nujywtayhg .gt_super {
  font-size: 65%;
}

#nujywtayhg .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#nujywtayhg .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#nujywtayhg .gt_indent_1 {
  text-indent: 5px;
}

#nujywtayhg .gt_indent_2 {
  text-indent: 10px;
}

#nujywtayhg .gt_indent_3 {
  text-indent: 15px;
}

#nujywtayhg .gt_indent_4 {
  text-indent: 20px;
}

#nujywtayhg .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table">
  <caption>(#tab:tmary)Frecuencias marginales de Y (est)</caption>
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="\(y_j\)">\(y_j\)</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="\(n_{·j}\)">\(n_{·j}\)</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="\(f_{·j}\)">\(f_{·j}\)</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="Y" class="gt_row gt_left">(28,30]</td>
<td headers="V1" class="gt_row gt_right">50</td>
<td headers="rel" class="gt_row gt_right">0.043</td></tr>
    <tr><td headers="Y" class="gt_row gt_left">(30,32]</td>
<td headers="V1" class="gt_row gt_right">602</td>
<td headers="rel" class="gt_row gt_right">0.514</td></tr>
    <tr><td headers="Y" class="gt_row gt_left">(32,34]</td>
<td headers="V1" class="gt_row gt_right">468</td>
<td headers="rel" class="gt_row gt_right">0.400</td></tr>
    <tr><td headers="Y" class="gt_row gt_left">(34,36]</td>
<td headers="V1" class="gt_row gt_right">46</td>
<td headers="rel" class="gt_row gt_right">0.039</td></tr>
    <tr><td headers="Y" class="gt_row gt_left">(36,38]</td>
<td headers="V1" class="gt_row gt_right">5</td>
<td headers="rel" class="gt_row gt_right">0.004</td></tr>
    <tr><td headers="Y" class="gt_row gt_left">Sum</td>
<td headers="V1" class="gt_row gt_right">1171</td>
<td headers="rel" class="gt_row gt_right">1.000</td></tr>
  </tbody>
  
  
</table>
</div>
```




### Distribución condicionada

La distribución de la variable $Y$ condicionada a un valor $x_i$ de la variable $X$ 
se representa por $Y | X = x_i$. Análogamente se puede definir para varios valores
de $X$, o de $X$ condicionada a $Y$.
Se lee "Distribución de $Y$ condicionada a que $X$ es igual a $x_i$".
Estas distribuciones condicionadas son variables univariantes que se pueden estudiar 
con análisis univariante.

A partir de la distribución conjunta, tomaríamos la fila o columna que se corresponde
con el valor "conocido", es decir, el de la condición. Las frecuencias relativas se calcularán 
dividiendo entre la frecuencia marginal, y no entre la frecuencia total. Por ejemplo:

$$f_{x_i|y=y_j}=\frac{n_{ij}}{n_{·j}}.$$



:::{.rmdejemplo data-latex=""}
La tabla \@ref(tab:tcondx) muestra la distribución De $X$ condicionada a que 
$Y = y_2$. Es decir, como es una variable numérica que hemos dividido en intervalos,
condicionada a que $Y \in (30,32]$. La tabla \@ref(tab:tcondy)
muestra la distribución de $Y$ condicionada a que
$X = x_5$, es decir, de $Y | X \in (6.55,6.6]$.
:::




```{=html}
<div id="nmepgysstj" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#nmepgysstj .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#nmepgysstj .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#nmepgysstj .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#nmepgysstj .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#nmepgysstj .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#nmepgysstj .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#nmepgysstj .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#nmepgysstj .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#nmepgysstj .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#nmepgysstj .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#nmepgysstj .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#nmepgysstj .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#nmepgysstj .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#nmepgysstj .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#nmepgysstj .gt_from_md > :first-child {
  margin-top: 0;
}

#nmepgysstj .gt_from_md > :last-child {
  margin-bottom: 0;
}

#nmepgysstj .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#nmepgysstj .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#nmepgysstj .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#nmepgysstj .gt_row_group_first td {
  border-top-width: 2px;
}

#nmepgysstj .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#nmepgysstj .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#nmepgysstj .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#nmepgysstj .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#nmepgysstj .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#nmepgysstj .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#nmepgysstj .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#nmepgysstj .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#nmepgysstj .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#nmepgysstj .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#nmepgysstj .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#nmepgysstj .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#nmepgysstj .gt_left {
  text-align: left;
}

#nmepgysstj .gt_center {
  text-align: center;
}

#nmepgysstj .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#nmepgysstj .gt_font_normal {
  font-weight: normal;
}

#nmepgysstj .gt_font_bold {
  font-weight: bold;
}

#nmepgysstj .gt_font_italic {
  font-style: italic;
}

#nmepgysstj .gt_super {
  font-size: 65%;
}

#nmepgysstj .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#nmepgysstj .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#nmepgysstj .gt_indent_1 {
  text-indent: 5px;
}

#nmepgysstj .gt_indent_2 {
  text-indent: 10px;
}

#nmepgysstj .gt_indent_3 {
  text-indent: 15px;
}

#nmepgysstj .gt_indent_4 {
  text-indent: 20px;
}

#nmepgysstj .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table">
  <caption>(#tab:tcondx)Frecuencias condicionadas de X</caption>
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="\(x_i\)">\(x_i\)</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="\(n_{i|j=2}\)">\(n_{i|j=2}\)</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="\(f_{i|j=2}\)">\(f_{i|j=2}\)</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="X" class="gt_row gt_left">(6.35,6.4]</td>
<td headers="n" class="gt_row gt_right">0</td>
<td headers="f" class="gt_row gt_right">0.000</td></tr>
    <tr><td headers="X" class="gt_row gt_left">(6.4,6.45]</td>
<td headers="n" class="gt_row gt_right">0</td>
<td headers="f" class="gt_row gt_right">0.000</td></tr>
    <tr><td headers="X" class="gt_row gt_left">(6.45,6.5]</td>
<td headers="n" class="gt_row gt_right">2</td>
<td headers="f" class="gt_row gt_right">0.003</td></tr>
    <tr><td headers="X" class="gt_row gt_left">(6.5,6.55]</td>
<td headers="n" class="gt_row gt_right">50</td>
<td headers="f" class="gt_row gt_right">0.083</td></tr>
    <tr><td headers="X" class="gt_row gt_left">(6.55,6.6]</td>
<td headers="n" class="gt_row gt_right">129</td>
<td headers="f" class="gt_row gt_right">0.214</td></tr>
    <tr><td headers="X" class="gt_row gt_left">(6.6,6.65]</td>
<td headers="n" class="gt_row gt_right">195</td>
<td headers="f" class="gt_row gt_right">0.324</td></tr>
    <tr><td headers="X" class="gt_row gt_left">(6.65,6.7]</td>
<td headers="n" class="gt_row gt_right">160</td>
<td headers="f" class="gt_row gt_right">0.266</td></tr>
    <tr><td headers="X" class="gt_row gt_left">(6.7,6.75]</td>
<td headers="n" class="gt_row gt_right">53</td>
<td headers="f" class="gt_row gt_right">0.088</td></tr>
    <tr><td headers="X" class="gt_row gt_left">(6.75,6.8]</td>
<td headers="n" class="gt_row gt_right">9</td>
<td headers="f" class="gt_row gt_right">0.015</td></tr>
    <tr><td headers="X" class="gt_row gt_left">(6.8,6.85]</td>
<td headers="n" class="gt_row gt_right">4</td>
<td headers="f" class="gt_row gt_right">0.007</td></tr>
    <tr><td headers="X" class="gt_row gt_left">Sum</td>
<td headers="n" class="gt_row gt_right">602</td>
<td headers="f" class="gt_row gt_right">1.000</td></tr>
  </tbody>
  
  
</table>
</div>
```


```{=html}
<div id="xwaxhcsivq" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#xwaxhcsivq .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#xwaxhcsivq .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#xwaxhcsivq .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#xwaxhcsivq .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#xwaxhcsivq .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#xwaxhcsivq .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#xwaxhcsivq .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#xwaxhcsivq .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#xwaxhcsivq .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#xwaxhcsivq .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#xwaxhcsivq .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#xwaxhcsivq .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#xwaxhcsivq .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#xwaxhcsivq .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#xwaxhcsivq .gt_from_md > :first-child {
  margin-top: 0;
}

#xwaxhcsivq .gt_from_md > :last-child {
  margin-bottom: 0;
}

#xwaxhcsivq .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#xwaxhcsivq .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#xwaxhcsivq .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#xwaxhcsivq .gt_row_group_first td {
  border-top-width: 2px;
}

#xwaxhcsivq .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#xwaxhcsivq .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#xwaxhcsivq .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#xwaxhcsivq .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#xwaxhcsivq .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#xwaxhcsivq .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#xwaxhcsivq .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#xwaxhcsivq .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#xwaxhcsivq .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#xwaxhcsivq .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#xwaxhcsivq .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#xwaxhcsivq .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#xwaxhcsivq .gt_left {
  text-align: left;
}

#xwaxhcsivq .gt_center {
  text-align: center;
}

#xwaxhcsivq .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#xwaxhcsivq .gt_font_normal {
  font-weight: normal;
}

#xwaxhcsivq .gt_font_bold {
  font-weight: bold;
}

#xwaxhcsivq .gt_font_italic {
  font-style: italic;
}

#xwaxhcsivq .gt_super {
  font-size: 65%;
}

#xwaxhcsivq .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#xwaxhcsivq .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#xwaxhcsivq .gt_indent_1 {
  text-indent: 5px;
}

#xwaxhcsivq .gt_indent_2 {
  text-indent: 10px;
}

#xwaxhcsivq .gt_indent_3 {
  text-indent: 15px;
}

#xwaxhcsivq .gt_indent_4 {
  text-indent: 20px;
}

#xwaxhcsivq .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table">
  <caption>(#tab:tcondy)Frecuencias condicionadas de Y</caption>
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="\(y_{j}\)">\(y_{j}\)</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="\(n_{j|i=5}\)">\(n_{j|i=5}\)</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="\(f_{j|i=5}\)">\(f_{j|i=5}\)</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="y" class="gt_row gt_left">(28,30]</td>
<td headers="V1" class="gt_row gt_right">17</td>
<td headers="f" class="gt_row gt_right">0.092</td></tr>
    <tr><td headers="y" class="gt_row gt_left">(30,32]</td>
<td headers="V1" class="gt_row gt_right">129</td>
<td headers="f" class="gt_row gt_right">0.701</td></tr>
    <tr><td headers="y" class="gt_row gt_left">(32,34]</td>
<td headers="V1" class="gt_row gt_right">36</td>
<td headers="f" class="gt_row gt_right">0.196</td></tr>
    <tr><td headers="y" class="gt_row gt_left">(34,36]</td>
<td headers="V1" class="gt_row gt_right">2</td>
<td headers="f" class="gt_row gt_right">0.011</td></tr>
    <tr><td headers="y" class="gt_row gt_left">(36,38]</td>
<td headers="V1" class="gt_row gt_right">0</td>
<td headers="f" class="gt_row gt_right">0.000</td></tr>
    <tr><td headers="y" class="gt_row gt_left">Sum</td>
<td headers="V1" class="gt_row gt_right">184</td>
<td headers="f" class="gt_row gt_right">1.000</td></tr>
  </tbody>
  
  
</table>
</div>
```



### Independencia de variables

Cuando la distribución de una variable $X$ no varía en función
de los valores de otra variable $Y$, entonces las variables $X$ e
$Y$ son estadísticamente independientes. Equivalentemente, la distribución de $X | Y=y_j$ es igual para
cualquier valor de $y_j$. Es decir, si son independientes se cumple:

$$f_{ij} = f_{i.}\cdot f_{.j} \;\forall i, j.$$


## Representación gráfica conjunta

### Gráficos de barras

Al igual que en el caso univariante, la mejor representación de tablas de
frecuencias para variables cualitativas y para variables numéricas discretas
sigue siendo el gráfico de barras. Hay varias variantes para representar las
dos variables:

1. El eje horizontal del gráfico representa las clases de ambas variables
$X$ e $Y$ de las variables, y se representan barras que representan las frecuencias absolutas conjuntas.

2. El eje horizontal del gráfico representa las clases de una de las variables,
la altura total de las barras representa la frecuencia absoluta de esa variable, y cada barra
se divide en trozos cuya altura es la frecuencia absoluta conjunta.

3.  El eje horizontal del gráfico representa las clases de una de las variables,
la altura total de las barras representa el 100% (todas la misma altura), y cada barra
se divide en trozos cuya altura es la frecuencia relativa condicionada a la clase de la barra.



:::{.rmdejemplo data-latex=""}
La figura \@ref(fig:barras2) muestra la representación de la tabla de
frecuencias \@ref(tab:tabs) con las barras adyacentes, mientras que la figura
\@ref(fig:barras2api) la representa con las barras apiladas. 
La figura \@ref(fig:barras2cond) muestra la representación de la tabla de
frecuencias de la variable "analista" condicionadas a cada tipo de queso.
:::



<div class="figure" style="text-align: center">
<img src="03-aed-bi_files/figure-html/barras2-1.png" alt="Gráfico de barras con frecuencias conjuntas" width="80%" />
<p class="caption">(\#fig:barras2)Gráfico de barras con frecuencias conjuntas</p>
</div>

<div class="figure" style="text-align: center">
<img src="03-aed-bi_files/figure-html/barras2api-1.png" alt="Gráfico de barras con frecuencias conjuntas apiladas" width="80%" />
<p class="caption">(\#fig:barras2api)Gráfico de barras con frecuencias conjuntas apiladas</p>
</div>

<div class="figure" style="text-align: center">
<img src="03-aed-bi_files/figure-html/barras2cond-1.png" alt="Gráfico de barras con frecuencias condicionadas" width="80%" />
<p class="caption">(\#fig:barras2cond)Gráfico de barras con frecuencias condicionadas</p>
</div>

Los gráficos de sectores son una representación muy popular para representar
tablas de frecuencias, aunque en general no están recomendados ya que el ojo humano
no es muy bueno para apreciar las diferencias entre ángulos, en comparación
con la capacidad para distinguir alturas.

Las tablas de frecuencias conjuntas de variables continuas agrupadas en intervalos
se pueden representar también mediante gráficos de barras igual que las 
cualitativas y las discretas. No obstante, si disponemos de todos los datos,
es más adecuado utilizar las representaciones que se explican a continuación.


### El gráfico de dispersión

Para dos variables continuas, la representación más adecuada es el gráfico de 
dispersión. El gráfico de dispersión es una "nube  de puntos" representada
en unos ejes cartesianos $X$, $Y$, que representan las escalas de cada una
de las variables. Cada punto representa un par de valores $(x_i, y_i)$.
Este gráfico permite apreciar a simple vista si hay relación lineal o de otro tipo
entre ambas variables.


:::{.rmdejemplo data-latex=""}
La figura \@ref(fig:disp) representa la variable "est" (extracto seco total) frente 
al pH en el ejemplo de los quesos. Se ha añadido transparencia a los puntos para
apreciar dónde hay mayor densidad de datos. A simple vista no se ve una relación clara.
Si añadimos algunos elementos al gráfico, podemos descubrir algo más. El gráfico
de la izquierda de la figura \@ref(fig:disp2) añade una línea de tendencia suavizada
en la que parece que hay un intervalo del pH en el que el est crece en la misma dirección
(entre 6,5 y 6,6 aproximadamente). En el gráfico de la derecha de la misma figura \@ref(fig:disp2)
hemos añadido una "capa" de color representando el tipo de queso. Aquí se puede ver claramente
como la "masa" inferior de puntos se corresponde con quesos distintos a los de la
"masa" superior.
:::


<div class="figure">
<img src="03-aed-bi_files/figure-html/disp-1.png" alt="Gráfico de dispersión del ejemplo de los quesos" width="672" />
<p class="caption">(\#fig:disp)Gráfico de dispersión del ejemplo de los quesos</p>
</div>


<div class="figure">
<img src="03-aed-bi_files/figure-html/disp2-1.png" alt="Gráficos de dispersión 'enriquecidos'" width="100%" />
<p class="caption">(\#fig:disp2)Gráficos de dispersión 'enriquecidos'</p>
</div>


### Gráficos de cajas por grupos

Cuando queremos estudiar conjuntamente una variable cuantitativa y una 
variable cualitativa, la representación más adecuada es mediante gráficos 
de cajas representando en el eje horizontal las clases de la variable 
cualitativa. De esta forma podemos comparar los principales estadísticos
en cada uno de los grupos. Los gráficos de cajas pueden ocultar información importante acerca de la distribución, por lo que otra representación muy útil
es el gráfico de densidad por grupos. También se pueden añadir capas de puntos,
o utilizar el gráfico de violín que suaviza la caja a la forma de la distribución.


:::{.rmdejemplo data-latex=""}
En la figura \@ref(fig:bp2) se representa la relación entre el tipo de queso
y el pH. El gráfico de la izquierda muestra el gráficos de cajas, y el de la derecha, un gráfico de violín. La figura \@ref(fig:dens2) mustra gráficos de 
densidad de la variable pH para cada tipo de queso. En ambos casos se aprecia claramente el comportamiento diferente de los quesos de tipo C.
:::




<div class="figure">
<img src="03-aed-bi_files/figure-html/bp2-1.png" alt="Representación de la relación entre pH y tipo de queso" width="100%" />
<p class="caption">(\#fig:bp2)Representación de la relación entre pH y tipo de queso</p>
</div>


```r
lab |> 
  ggplot(aes(x = ph, colour = tipo, fill = tipo)) +
  geom_density(alpha = 0.4) +
  theme_bw() +
  labs(title = "Gráficos de densidad por tipo de queso",
       x = "pH",
       y = "Densidad",
       fill = "Tipo de queso",
       colour = "Tipo de queso") 
```

<div class="figure">
<img src="03-aed-bi_files/figure-html/dens2-1.png" alt="Gráficos de densidad por grupos" width="672" />
<p class="caption">(\#fig:dens2)Gráficos de densidad por grupos</p>
</div>





## Medidas conjuntas

Al igual que en el caso univariante, podemos obtener medidas conjuntas
de dos variables que resuman su relación. 

### Covarianza

La medida más importante es 
la **covarianza**. La covarianza mide la dependencia **lineal** entre las variables, y se define como:

$$\sigma_{xy} = \frac{1}{N} \sum\limits_{i=1}^n(X_i-\bar X)(Y_i-\bar Y)$$

Para datos muestrales, dividimos por $n - 1$:

$$s_{xy} = \frac{1}{n-1} \sum\limits_{i=1}^n(x_i-\bar x)(y_i-\bar y).$$



* Si $s_{xy} > 0$: Relación lineal positiva (cuando una crece, la otra también).
* Si $s_{xy} < 0$: Relación lineal negativa (cuando una crece, la otra decrece).
* Si $s_{xy} = 0$: No hay relación lineal.


Decimos que hay relación lineal cuando una variable se puede expresar en función de la otra como una transformación lineal, es decir: $Y=a+bX$. Esta sería una relación perfecta entre dos variables. En la práctica, habrá cierto "error" en esta relación, como veremos más adelante.

Podemos realizar el cálculo abreviado al igual que con la varianza. Según el caso:

* Covarianza poblacional con todos los datos:

$$\sigma_{xy} = \frac{1}{N} \sum\limits_{i=1}^N(X_i \cdot Y_i) - \bar X \cdot \bar Y.$$

* Covarianza poblacional con tablas de frecuencias:

$$\sigma_{xy} = \frac{1}{N} \sum\limits_{i=1}^N(n_i \cdot X_i \cdot Y_i) - \bar x \cdot \bar y.$$

* Covarianza muestral, con todos los datos:

$$s_{xy} = \frac{1}{n-1} \left ( \sum\limits_{i=1}^n(x_i \cdot y_i) - n \cdot \bar x \cdot \bar y \right ).$$


Una propiedad importante de la covarianza es que si $X$ e $Y$ son variables independientes, su covarianza es cero. Lo contrario no tiene por qué ser verdad, ya que puede existir una relación no lineal, como veremos más adelante.

La covarianza es un estadístico muy importante para aplicar muchas técnicas estadísticas. Sin embargo, su interpretación más allá del signo no es muy útil, ya que no está acotada: depende de las unidades de las variables. 

### Correlación

Para interpretar la relación lineal entre dos variables, en vez de la covarianza calcularemos el **coeficiente de correlación lineal**, que sí está acotado, en concreto entre -1 y 1:

$$r_{xy}=\frac{s_{xy}}{s_x \cdot s_y}.$$

* Si $r_{xy}$ próximo a 0, no hay relación lineal
* Si $r_{xy}$ próximo a -1 o 1, relación lineal **fuerte**, negativa o positiva respectivamente
* Si $r_{xy} = 1$ relación lineal perfecta. Aparece también al correlacionar una variable con sí misma.


Un conjunto de datos bivariantes quedará caracterizado por su vector de medias
y su matriz de varianzas-covarianzas. El vector de medias contiene las medias
de las dos variables:

$$\left [
\begin{array}{c}\bar x\\
\bar y\end{array}\right ].$$


La Matriz de varianzas-covarianzas, o simplemente matriz de covarianzas, sería:

$$\mathbf{S} = \left [\begin{array}{cc}
s^2_x & s_{xy}\\
s_{xy} & s_y^2
\end{array}\right ]$$

Mientras que la matriz de correlaciones tendría valores igual a 1 en la diagonal,
y el coeficiente de correlación fuera de la diagonal:

$$\mathbf{R} = \left [\begin{array}{cc}
1 & r_{xy}\\
r_{xy} & 1
\end{array}\right ]$$




:::{.rmdejemplo data-latex=""}
En el ejemplo de la producción de quesos,
si tomamos $X$ = ph; $Y$ = est, tenemos los siguientes datos resumidos:

$$n = 1.171;\; \sum x_i = 7.784,447;\; \sum y_i = 37.203,32$$
$$\sum x_i^2 = 51.752,12;\; \sum y_i^2 = 1.183.966 ;\; \sum x_i y_i = 247.344,4$$


el vector de medias sería:

$$\left [
\begin{array}{c} 6,648\\
31,771\end{array}\right ],$$

y la matriz de covarianzas (muestrales)

$$\mathbf{S} = \left [\begin{array}{cc}
s^2_x & s_{xy}\\
s_{xy} & s_y^2
\end{array}\right ]=\left [\begin{array}{cc}
0,003 & 0,0241\\
0,0241 & 1,7061
\end{array}\right ]$$

El coeficiente de correlación lineal será entonces:

$$r_{xy}=\frac{s_{xy}}{s_x \cdot s_y}= \frac{0,0241}{\sqrt{0,003\cdot 1,7061}} = 0,3366.$$
:::

### Caso multivariante

En el caso de estudiar más de dos características numéricas, se extiende la matriz de 
covarianzas a cualquier número de variables. En este caso las matrices de covarianzas y de correlaciones tendrán tantas filas o columnas como variables. Estas matrices se utilizan en cálculo multivariante y multitud de métodos estadísticdos. Una propiedad importante de la matriz de covarianzas es que si previamente **tipificamos** las variables, la matriz de covarianzas de la variable tipificada es igual a la matriz de correlaciones de las variables originales.

:::{.rmdpractica data-latex=""}
Con el código a continuación obtenemos la matriz de correlaciones de todas
las variables numéricas del conjunto de datos de la producción de queso.
:::



```r
lab |> select(where(is.numeric), -codigo) |> 
  drop_na() |> 
  cor() |> 
  round(2)
                 est    mg   sal    ph bacteriax
est             1.00 -0.27  0.62  0.37      0.01
mg             -0.27  1.00 -0.49 -0.44     -0.01
sal             0.62 -0.49  1.00  0.46      0.00
ph              0.37 -0.44  0.46  1.00     -0.12
bacteriax       0.01 -0.01  0.00 -0.12      1.00
imperfecciones -0.03  0.00  0.00  0.03     -0.02
               imperfecciones
est                     -0.03
mg                       0.00
sal                      0.00
ph                       0.03
bacteriax               -0.02
imperfecciones           1.00
```



### Patrones en los gráficos

La nube de puntos del gráfico de dispersión nos da una idea de la relación entre 
las variables. También nos da pistas de cómo será el coeficiente de correlación.
Es importante volver a resaltar que Los resúmenes numéricos pueden estar escondiendo información importante, por ejemplo relaciones no lineales. La figura \@ref(fig:patronesr) muestra los gráficos de dispersión de dos variables
y sus correspondientes coeficientes de correlación. Los dos primeros gráficos de la primera columna muestran una relación perfecta, mientras que el tercero muestra ausencia de correlación, y además independencia (no se aprecia otro tipo de relación, solo "ruido"). En la segunda columna, el primer gráfico muestra una alta correlación lineal, es decir hay una relación **fuerte** entre las variables. El segundo sin embargo también muestra relación lineal, pero más moderada. El último gráfico ilustra cómo una correlación muy baja, próxima a cero, indica que no hay relación lineal, como en el gráfico de la izquierda. Si embargo, no podemos decir que las variables sean independientes, porque hay claramente una dependencia funcional entre la $X$ y la $Y$, pero no es lineal.




<div class="figure" style="text-align: right">
<img src="03-aed-bi_files/figure-html/patronesr-1.png" alt="Patrones en la nube de puntos según el coeficiente de correlación" width="100%" />
<p class="caption">(\#fig:patronesr)Patrones en la nube de puntos según el coeficiente de correlación</p>
</div>






## Regresión lineal simple

Las técnicas de regresión, de manera general tratan de encontrar una
relación funcional entre una variable dependiente $Y$ y una o más variables
independientes $X$:

$$Y = f(\mathbf{X}) + \varepsilon.$$

En el caso más sencillo de una sola variable independiente, cuando existe relación lineal los puntos del gráfico de dispersión se disponen alrededor de una **línea recta**, y podemos expresar la relación mediante la ecuación de la recta que mejor
se aproxima a la nube de puntos. Esta aproximación estará ligada a un error, representado en la expresión anterior por $\varepsilon$, que mediremos con la variabilidad alrededor de la línea, de forma análoga a como la varianza expresa la variabilidad de los datos entorno a la media. Así, la recta de regresión quedaría expresada como:

$$Y = a + bX + \varepsilon,$$
donde $X$ es la variable independiente o explicativa, $Y$ es la variable dependiente o variable respuesta, $a$ y $b$ son los coeficientes de regresión (término independiente y pendiente de la recta respectivamente) y $\varepsilon$ es el error. 

### Estimación de los coeficienetes

Tenemos pares de datos $(x_i, y_i)$ que queremos ajustar al modelo matemático de la recta. Para cualesquiera valores de $a$ y $b$ que elijamos, podemos
aproximar los valores de $y_i$ como:

$$\hat{y}_i = a + bx_i.$$

Esta aproximación tiene un error, que es el **residuo** de esa observación:

$$y_i = \hat y + \varepsilon_i \implies \varepsilon_i=y_i - \hat{y}_i.$$
La figura \@ref(fig:resid) esquematiza la relación entre los valores de la
variable bivariante (puntos naranjas), la recta de regresión (línea azul) y
los residuos (líneas negras).

<div class="figure">
<img src="03-aed-bi_files/figure-html/resid-1.png" alt="Esquematización de los valores, recta y residuos en regresión lineal" width="672" />
<p class="caption">(\#fig:resid)Esquematización de los valores, recta y residuos en regresión lineal</p>
</div>



Una forma de estimar los coeficientes de regresión es minimizando la suma de los
cuadrados de los residuos:

$${a; b}: \min \sum\limits_{i=1}^n \varepsilon_i^2 =\min \sum\limits_{i=1}^n(y_i-(a+bx_i))^2.$$
Derivando e igualando a cero tenemos los siguientes valores que minimizan la función:

$$b = \frac{s_{xy}}{s_x^2},$$
$$a = \bar y - b \bar x.$$
Es inmediato demostrar que la pendiente de la recta también la podemos
calcular como:

$$b = \frac{s_y}{s_x}r_{xy}.$$

### Interpretación de los coeficientes

La recta de regresión nos sirve para dos cometidos: explicar la relación entre
las variables, y hacer predicciones. En cuanto a la interpretación, el coeficiente $a$ es el valor medio esperado de $Y$ cuando $X=0$. 
No siempre tiene interpretación ya que el 0 puede estar fuera del dominio de $X$.
El coeficiente $b$ significa "cuántas unidades aumenta $Y$ por cada unidad 
que aumenta $X$ (si $b<0$, cuánto disminuye).

En cuanto a la predicción, podemos predecir cuánto valdrá, en promedio, la variable $Y$ para un
determinado valor de $X, x_{n+1}$. Para hacer la predicción, sustuimos $x$ por el nuevo valor en la ecuación de la recta:

$$\hat{y}_{n+1} = a + bx_{n+1}.$$
Hay que tener en cuenta que esta predicción solo es válida para el rango de $X$ utilizado para obtener los coeficientes.



### Error y bondad de ajuste

Pare resumir el error cometido, podríamos buscar una medida resumen de los residuos. Por las propiedades del método de mínimos cuadrados, la media de los 
residuos es cero:

$$\bar \varepsilon = \frac{1}{n}\sum\limits_{i=1}^n \varepsilon_i = 0.$$

Entonces, para cuantificar el error, calculamos la media de los residuos al cuadrado, a
la que llamamos "varianza residual":

$$s_\varepsilon^2= \frac{1}{n}\sum\limits_{i=1}^n \varepsilon_i^2.$$

Si desarrollamos los términos de la varianza residual: 

$$s_\varepsilon^2= \frac{1}{n}\sum\limits_{i=1}^n (y_i - (a + b x_i))^2,$$
llegamos a la siguiente expresión:

$$\frac{s_\varepsilon^2}{s_y^2}=(1-r_{xy}^2),$$
y de ahí:

$$r^2_{xy} = 1- \frac{s_\varepsilon^2}{s_y^2} \equiv R^2,$$

que definimos como **coeficiente de determinación**, y su interpretación es como sigue. La varianza residual $s_\varepsilon^2$ es la variabilidad no explicada por la recta. Cuanto más se acerquen los puntos a la recta, mejor explicado está el modelo, y más pequeña es esta varianza. La varianza de $Y$, $s_y^2$, es la variabilidad Total. Por tanto, $\frac{s_\varepsilon^2}{s_y^2}$ es la proporción de variabilidad no explicada por la recta de regresión. Y entonces $R^2$ es **la proporción de variabilidad explicada por la regresión**. 



La expresión general $R^2 = 1- \frac{s_\varepsilon^2}{s_y^2}$ es válida para cualquier modelo de regresión en el que podamos calcular los residuos y su varianza. Pero la equivalencia $R^2=r^2$ solo es válida en el caso de la regresión lineal simple.




:::{.rmdejemplo data-latex=""}
En el ejemplo de la fábrica de quesos, tomemos $X$ la variable "materia grasa" e $Y$ el extracto seco total. Para simplificar el ejemplo, tomamos solo las 15 primeras observaciones, que se muestran en la tabla \@ref(tab:reglabt). La figura \@ref(fig:reglab) muestra la nube de puntos
y la recta de regresión estimada por mínimos cuadrados. La recta de regresión estimada es:

$$
\operatorname{\widehat{est}} = 9.509 + 1.696(\operatorname{mg})
$$

El coeficiente $a$ no tiene interpretación, ya que el cero no es un valor
posible en la variable materia grasa, al menos en esta muestra. La interpretación del coeficiente $b$ es la siguiente: por cada unidad que aumente `mg`, porcentaje de materia grasa, aumenta 1.696 unidades `est` (extracto seco total).

La varianza residual es 0.329, y el coeficiente de determinación:

$$R^2 = 0,685.$$

Por tanto, la regresión explica el 68,48% de la variabilidad de los datos.


:::


Table: (\#tab:reglabt)Datos de quesos para la regresión

|    |     |      |      |   |      |      |     |      |     |      |      |      |      |      |      |
|:---|----:|-----:|-----:|--:|-----:|-----:|----:|-----:|----:|-----:|-----:|-----:|-----:|-----:|-----:|
|mg  | 14.0| 13.00| 13.00| 13| 13.50| 12.50| 13.0| 12.50| 12.5| 12.50| 12.50| 13.00| 13.50| 13.50| 13.50|
|est | 33.5| 31.05| 31.42| 31| 31.54| 30.51| 32.3| 31.27| 31.1| 30.76| 30.33| 31.46| 31.71| 33.35| 32.96|


<div class="figure" style="text-align: center">
<img src="03-aed-bi_files/figure-html/reglab-1.png" alt="Recta de regresión del extracto seco frente a la materia grasa" width="100%" />
<p class="caption">(\#fig:reglab)Recta de regresión del extracto seco frente a la materia grasa</p>
</div>

### Extensiones del modelo lineal

El modelo lineal explicado aquí se puede extender fácilmente para recoger algunas
relaciones no lineales. Una manera sencilla es aplicar logaritmos a la variable explicativa, a la respuesta o a ambas, y estimar los coeficientes con las variables transformadas. Del mismo modo, se pueden transformar usando potencias o exponenciales, y ajustar polinomios añadiendo términos cuadráticos, cúbicos, etc.

Otra extensión es la regresión multivariante, generalizando a $p$ variables independientes, que incluso pueden ser cualitativas. Por último, los modelos
lineales generalizados pueden estimar modelos con respuestas no continuas, por 
ejemplo binarias (regresión logística) o de recuentos (regresión de Poisson).


:::{.rmdcafe data-latex=""}
¡Correlación no implica **causalidad**!

El hecho de que exista relación entre las variables, no significa
que esta relación sea de causa-efecto. Para demostrar este tipo de
relaciones, sería necesario confirmar con diseño de experimentos.

Visita este enlace para ver algunas correlaciones espúreas (¡y curiosas!).

https://tylervigen.com/spurious-correlations


:::



## Intro multivariante






