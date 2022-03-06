--- 
title: "Estadística Aplicada a las Ciencias y la Ingeniería"
author: "Emilio L. Cano"
date: "2022-03-06"
site: bookdown::bookdown_site
documentclass: book
bibliography: [book.bib, packages.bib]
url: https://emilopezcano.github.io/estadistica-ciencias-ingenieria/
cover-image: 'images/cover.png'
description: |
  Libro para asignaturas de Estadística en grados de Ciencias e Ingeniería.
  Puede ser útil también para asignaturas de Estadística en otros grados como
  Economía o ADE. Contiene una visión muy particular del autor.
biblio-style: apalike
csl: chicago-fullnote-bibliography.csl
---



# Bienvenida {-}



<img src="images/cover.png" class="cover" width="250" height="328"/>
Este libro incluye los contenidos habitualmente presentes en el currículo 
de asignaturas de **Estadística** de los grados Ciencias e Ingenierías de universidades españolas. Aunque no aparezca en el título, el manual incluye también los contenidos de **Probabilidad** necesarios.
Si bien existe abundante material bibliográfico
que cubre los contenidos de estas asignaturas, quería elaborar un material
propio que no fuera solamente para mis clases sino algo más
_global_. En los últimos años ya lo hice para asignaturas de grado y Máster en ADE [@libroeee;@libroadr]. Por otra parte, me motiva cubrir el hueco de los materiales
de acceso gratuito con la opción de comprar una edición 
impresa^[A la espera de encontrar editorial.] y con el enfoque
que se menciona en el siguiente apartado. Por otra parte, los libros publicados
originalmente en inglés y traducidos al español a menudo me resultan lejanos 
a nuestro idioma (por muy buenas que sean las traducciones, los ejemplos en _acres_
no son muy intuitivos para un lector español). Espero que también sirva para
lectores de otros países de habla hispana.

## Estándares y software {-}

Los contenidos de este libro se basan en dos paradigmas que están presentes
en los intereses de investigación y docencia del autor: los **estándares** y
el **software libre**. En lo que se refiere a estándares, la notación utilizada,
definiciones y fórmulas se ajustarán el máximo posible a la utilizada en normas
nacionales e internacionales sobre metodología estadística. Estas normas se
citarán pertinentemente a lo largo del texto. En cuanto al software libre,
se proporcionarán instrucciones para resolver los ejemplos 
que ilustran la teoría utilizando software libre. 
No obstante, el uso del software es
auxiliar al texto y se puede seguir sin necesidad de utilizar
los programas. Según lo que proceda en cada caso, se utilizará 
software de hoja de cálculo, el software estadístico y lenguaje de 
programación 
**R** [@R-base],
y el software de álgebra computacional **Máxima**^[http://maxima.sourceforge.net/es/].
Respecto al software de hoja de cálculo, las fórmulas utilizadas se han probado
en el software libre **LibreOffice**^[https://es.libreoffice.org], en **Hojas de Cálculo de Google**^[https://www.google.es/intl/es/sheets/about/] y
también en **Microsoft EXCEL**^[https://products.office.com/es-es/excel] que, 
aunque no es software libre, su uso
está más que generalizado y normalmente los estudiantes disponen de licencia de uso
a través de su universidad. En caso de que el nombre de la función sea distinta 
en EXCEL, se indicará en el propio ejemplo.

Las normas son clave para el desarrollo económico de un país. Estudios en diversos países, 
incluido España, han demostrado que la aportación de la normalización a su economía es del 1% del PIB^[http://www.aenor.es/DescargasWeb/normas/como-beneficia-es.pdf]. La
Asociación Española de Normalización (UNE) es el organismo legalmente
responsable del desarrollo y difusión de las normas técnicas en España.
Además, representa a España en los organismos internacionales de normalización como
[ISO](https://www.iso.org/)^[https://www.iso.org/] y [CEN](https://www.cen.eu/)^[https://www.cen.eu/].

Las normas sobre estadística que surgen de ISO las elabora el _Technical Committee_
ISO TC 69^[https://www.iso.org/committee/49742/x/catalogue/] _Statistical Methods_. 
Por su parte, el subcomité técnico de normalización
CTN 66/SC 3^[https://www.une.org/encuentra-tu-norma/comites-tecnicos-de-normalizacion/comite/?c=CTN%2066/SC%203], Métodos Estadísticos,
participa como miembro nacional en ese comité ISO.
Las normas que son de interés en España, se ratifican en inglés o se traducen
al español como normas UNE. Para una descripción más completa de la elaboración
de normas, véase @cano2015qcr.

## Estructura del libro {-}

Este libro se ha elaborado utilizando el lenguaje _Markdown_ con el propio 
software **R** y el paquete **bookdown** [@R-bookdown]. 
Se incluyen una gran cantidad de ejemplos resueltos tanto de forma analítica
como mediante software. En algunos casos se proporciona el uso de funciones 
en hojas de cálculo (y el resultado obtenido con un recuadro). 
En otros, código de R, que aparecen en el texto
sombreados y con la sintaxis coloreada, como el fragmento a continuación
donde se puede comprobar la sesión de R en la que ha sido generado este material.
Obsérvese que los resultados se muestran precedidos de los símbolos
`#>`.


```r
sessionInfo()
#> R version 4.1.2 (2021-11-01)
#> Platform: x86_64-apple-darwin17.0 (64-bit)
#> Running under: macOS Big Sur 10.16
#> 
#> Matrix products: default
#> BLAS:   /Library/Frameworks/R.framework/Versions/4.1/Resources/lib/libRblas.0.dylib
#> LAPACK: /Library/Frameworks/R.framework/Versions/4.1/Resources/lib/libRlapack.dylib
#> 
#> locale:
#> [1] es_ES.UTF-8/es_ES.UTF-8/es_ES.UTF-8/C/es_ES.UTF-8/es_ES.UTF-8
#> 
#> attached base packages:
#> [1] stats     graphics  grDevices utils     datasets 
#> [6] methods   base     
#> 
#> other attached packages:
#> [1] fontawesome_0.2.2
#> 
#> loaded via a namespace (and not attached):
#>  [1] bookdown_0.24.3 digest_0.6.29   R6_2.5.1       
#>  [4] jsonlite_1.8.0  magrittr_2.0.2  evaluate_0.15  
#>  [7] stringi_1.7.6   cachem_1.0.6    rlang_1.0.1    
#> [10] cli_3.2.0       fs_1.5.2        rstudioapi_0.13
#> [13] jquerylib_0.1.4 xml2_1.3.3      bslib_0.3.1    
#> [16] rmarkdown_2.11  tools_4.1.2     stringr_1.4.0  
#> [19] xfun_0.29       yaml_2.3.5      fastmap_1.1.0  
#> [22] compiler_4.1.2  memoise_2.0.1   htmltools_0.5.2
#> [25] downlit_0.4.0   knitr_1.37      sass_0.4.0
```

Normalmente, la descripción o enunciado de los ejemplos se incluyen en bloques 
con el siguiente aspecto:

::: {.rmdejemplo data-latex=""}

Esto es un ejemplo. A continuación puede mostrarse código o no. Los ejemplos
pueden ir precedidos por un icono para identificar su campo de aplicación, por 
ejemplo `<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:purple;overflow:visible;position:relative;"><path d="M511,102.93A23.76,23.76,0,0,0,481.47,87l-15.12,4.48a111.85,111.85,0,0,0-48.5-47.42l3.79-14.47a23.74,23.74,0,0,0-46-11.91l-3.76,14.37a111.94,111.94,0,0,0-22.33,1.47,386.74,386.74,0,0,0-44.33,10.41l-4.3-12a23.74,23.74,0,0,0-44.75,15.85l4.3,12.05a383.4,383.4,0,0,0-58.69,31.83l-8-10.63a23.85,23.85,0,0,0-33.24-4.8,23.57,23.57,0,0,0-4.83,33.09l8,10.63a386.14,386.14,0,0,0-46.7,47.44l-11-8a23.68,23.68,0,1,0-28,38.17l11.09,8.06a383.45,383.45,0,0,0-30.92,58.75l-12.93-4.43a23.65,23.65,0,1,0-15.47,44.69l13,4.48a385.81,385.81,0,0,0-9.3,40.53A111.58,111.58,0,0,0,32.44,375L17,379.56a23.64,23.64,0,0,0,13.51,45.31l15-4.44a111.49,111.49,0,0,0,48.53,47.24l-3.85,14.75a23.66,23.66,0,0,0,17,28.83,24.7,24.7,0,0,0,6,.75,23.73,23.73,0,0,0,23-17.7L140,479.67c1.37.05,2.77.35,4.13.35A111.22,111.22,0,0,0,205,461.5l11.45,11.74a23.7,23.7,0,0,0,34.08-32.93l-12.19-12.5a111,111,0,0,0,16.11-41.4,158.69,158.69,0,0,1,5.16-20.71l12,5.64a23.66,23.66,0,1,0,20.19-42.79l-11.72-5.49c.89-1.32,1.59-2.77,2.52-4.06a157.86,157.86,0,0,1,10.46-12.49,159.5,159.5,0,0,1,15.59-15.28,162.18,162.18,0,0,1,13.23-10.4c1.5-1,3.1-1.89,4.63-2.87l5.23,11.8a23.74,23.74,0,0,0,43.48-19.08l-5.36-12.11a158.87,158.87,0,0,1,16.49-4.1,111,111,0,0,0,45-18.54l13.33,12a23.69,23.69,0,1,0,31.88-35l-12.94-11.67A110.83,110.83,0,0,0,479.21,137L495,132.32A23.61,23.61,0,0,0,511,102.93ZM160,368a48,48,0,1,1,48-48A48,48,0,0,1,160,368Zm80-136a24,24,0,1,1,24-24A24,24,0,0,1,240,232Z"/></svg>`{=html} Biología, `<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:gold;overflow:visible;position:relative;"><path d="M0 288v160a32 32 0 0 0 32 32h448a32 32 0 0 0 32-32V288zM299.83 32a32 32 0 0 0-21.13 7L0 256h512c0-119.89-94-217.8-212.17-224z"/></svg>`{=html} Ciencia y tecnología de Alimentos, o `<svg aria-hidden="true" role="img" viewBox="0 0 384 512" style="height:1em;width:0.75em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:green;overflow:visible;position:relative;"><path d="M378.31 378.49L298.42 288h30.63c9.01 0 16.98-5 20.78-13.06 3.8-8.04 2.55-17.26-3.28-24.05L268.42 160h28.89c9.1 0 17.3-5.35 20.86-13.61 3.52-8.13 1.86-17.59-4.24-24.08L203.66 4.83c-6.03-6.45-17.28-6.45-23.32 0L70.06 122.31c-6.1 6.49-7.75 15.95-4.24 24.08C69.38 154.65 77.59 160 86.69 160h28.89l-78.14 90.91c-5.81 6.78-7.06 15.99-3.27 24.04C37.97 283 45.93 288 54.95 288h30.63L5.69 378.49c-6 6.79-7.36 16.09-3.56 24.26 3.75 8.05 12 13.25 21.01 13.25H160v24.45l-30.29 48.4c-5.32 10.64 2.42 23.16 14.31 23.16h95.96c11.89 0 19.63-12.52 14.31-23.16L224 440.45V416h136.86c9.01 0 17.26-5.2 21.01-13.25 3.8-8.17 2.44-17.47-3.56-24.26z"/></svg>`{=html} Ciencia e Ingeniería Ambiental.  

:::

Cuando el ejemplo incluya explicaciones sobre cómo resolverlo con software, 
estas explicaciones aparecerán en bloques con el siguiente aspecto:

::: {.rmdpractica data-latex=""}

**HOJA DE CÁLCULO**

La función `FACT` obtiene el factorial de un número x ($x!$):
  
`=FACT(5)`
$\boxed{\mathsf{120}}$

:::

También se incluirán con el formato anterior indicaciones para usar la calculadora 
científica, cuando esto sea posible. 

El texto incluye otros bloques con información de distinto tipo, como los siguientes:

::: {.rmdpremium data-latex=""}
Este contenido se considera avanzado. El lector principiante puede saltarse estos apartados
y volver sobre ellos en una segunda lectura.
:::

::: {.rmdcafe data-latex=""}
Estos bloques están pensados para incluir información curiosa o complementaria
para poner en contexto las explicaciones.
:::

Este volumen cubre los contenidos de asignaturas básicas de Estadística en un 
amplio rango de grados. Puede servir también como repaso
para alumnos de posgrado o incluso egresados que necesiten refrescar
conocimientos o aprender a aplicarlos con software moderno. Un segundo volumen cubrirá en el futuro métodos y modelos avanzados para 
entornos más exigentes.

El libro está dividido en 4 partes. La primera parte está dedicada a la Estadística
Descriptiva, y consta de un [capítulo introductorio](#intro) seguido de sendos capítulos
para el análisis exploratorio univariante y bivariante. La segunda parte 
trata la Probabilidad en 4 capítulos, uno introductorio, dos dedicados a las 
variables
aleatorias univariantes y bivariantes respectivamente, y finalmente un capítulo
que trata los modelos de distribución de probabilidad. En la tercera parte se
aborda la inferencia estadística, con una introducción al muestreo y la 
estimación puntual, seguida de capítulos dedicados a los contrastes de 
comparación de grupos, análisis de regresión y diseño de experimentos. La última
parte está dedicada al control estadístico de la calidad, en la que,
tras un capítulo introductorio, se tratan las dos herramientas más importantes
en este campo: el control estadístico de procesos (SPC, _Statistical Process 
Control_, por sus siglas en inglés) y los muestreos de aceptación o, dicho de
otra forma, la inspección por muestreo. Finalmente, una serie de apéndices
con diverso material complementan el libro en su conjunto.




## Sobre el autor {-}

Actualmente soy Profesor Contratado Doctor en la Escuela [Técnica Superior de Ingeniería Informática](https://www.urjc.es/etsii) e investigador en el [Data Science Laboratory](http://www.datasciencelab.es) de la [Universidad Rey Juan Carlos](https://www.urjc.es). Mis intereses de investigación incluyen Estadística Aplicada, Aprendizaje Estadístico y Metodologías para la Calidad. Previamente he sido profesor e investigador en la [Universidad de Castilla-La Mancha](https://www.uclm.es), donde sigo colaborando en docencia e investigación, y Estadístico en empresas del sector privado de diversos sectores.

Presidente del subcomité técnico de normalización UNE ([miembro de ISO](https://www.iso.org/committee/49742/x/catalogue/)) [CTN 66/SC 3 (Métodos Estadísticos)](https://www.une.org/encuentra-tu-norma/comites-tecnicos-de-normalizacion/comite/?c=CTN%2066/SC%203). Profesor en la Asociación Española para la Calidad ([AEC](https://www.aec.es)). Presidente de la asociación [Comunidad R Hispano](http://r-es.org).

Más sobre mí, información actualizada y publicaciones: http://emilio.lcano.com.  
Contacto: emilio@lcano.com

El material se proporciona bajo licencia CC-BY-NC-ND.
Todos los logotipos y marcas comerciales que puedan aparecer en este texto
son propiedad de sus respectivos dueños y se incluyen en este texto únicamente 
con fines formativos. Se ha puesto especial cuidado en la adecuada atribución 
del material no elaborado por el autor, véase el Apéndice \@ref(creditos). 
Aún así, si detecta algún uso 
indebido de material protegido póngase en contacto con el autor y será retirado.
Igualmente, contacte con el autor **si desea utilizar este material con fines 
comerciales**.






<a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/"><img alt="Licencia de Creative Commons" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-nd/4.0/88x31.png" /></a><br />Este obra está bajo una <a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/">licencia de Creative Commons Reconocimiento-NoComercial-SinObraDerivada 4.0 Internacional</a>.

## Agradecimientos {-}

Este libro es el resultado de años de trabajo en la docencia, investigación
y transferencia de conocimiento en el campo de la Estadística. Está construido
a partir de las contribuciones a lo largo de los años de compañeros y amigos
como Javier M. Moguerza, Andrés Redchuk, David Ríos, Felipe Ortega, Mariano Prieto, 
Miguel Ángel Tarancón, Víctor M. Casero, Virgilio Gómez-Rubio, Matías Gámez, y 
muchos otros (perdón
a l@s omitid@s por no ser más exhaustivo).

Especial agradecimiento a toda la comunidad del [software libre y 
lenguaje de programación R](https://www.r-project.org), y en particular al _R Core Team_ y al equipo
de [RStudio](https://www.rstudio.com).



