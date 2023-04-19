--- 
title: "Estadística Aplicada a las Ciencias y la Ingeniería"
author: "Emilio L. Cano"
date: "2023-04-19"
site: bookdown::bookdown_site
documentclass: book
bibliography: [book.bib, packages.bib, iso.bib]
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
Bienvenido/a a  "Estadística Aplicada a las Ciencias y la Ingeniería" por [Emilio L. Cano](http://emilio.lcano.com).

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
#> R version 4.2.3 (2023-03-15)
#> Platform: x86_64-apple-darwin17.0 (64-bit)
#> Running under: macOS Big Sur ... 10.16
#> 
#> Matrix products: default
#> BLAS:   /Library/Frameworks/R.framework/Versions/4.2/Resources/lib/libRblas.0.dylib
#> LAPACK: /Library/Frameworks/R.framework/Versions/4.2/Resources/lib/libRlapack.dylib
#> 
#> locale:
#> [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
#> 
#> attached base packages:
#> [1] stats     graphics  grDevices utils     datasets 
#> [6] methods   base     
#> 
#> other attached packages:
#> [1] flextable_0.8.4   fontawesome_0.5.0
#> 
#> loaded via a namespace (and not attached):
#>  [1] zip_2.2.2         Rcpp_1.0.10       jquerylib_0.1.4  
#>  [4] bslib_0.4.2       compiler_4.2.3    later_1.3.0      
#>  [7] base64enc_0.1-3   gfonts_0.2.0      tools_4.2.3      
#> [10] downlit_0.4.2     digest_0.6.31     uuid_1.1-0       
#> [13] evaluate_0.20     jsonlite_1.8.4    memoise_2.0.1    
#> [16] lifecycle_1.0.3   rlang_1.0.6       shiny_1.7.4      
#> [19] cli_3.6.0         rstudioapi_0.14   yaml_2.3.7       
#> [22] crul_1.3          curl_5.0.0        xfun_0.36        
#> [25] fastmap_1.1.0     withr_2.5.0       officer_0.5.2    
#> [28] knitr_1.42        xml2_1.3.3        fs_1.6.0         
#> [31] sass_0.4.5        gdtools_0.3.0     systemfonts_1.0.4
#> [34] askpass_1.1       grid_4.2.3        glue_1.6.2       
#> [37] httpcode_0.3.0    data.table_1.14.6 R6_2.5.1         
#> [40] rmarkdown_2.20    bookdown_0.32     magrittr_2.0.3   
#> [43] promises_1.2.0.1  ellipsis_0.3.2    htmltools_0.5.5  
#> [46] mime_0.12         xtable_1.8-4      httpuv_1.6.8     
#> [49] openssl_2.0.5     cachem_1.0.6      crayon_1.5.2
```

Normalmente, la descripción o enunciado de los ejemplos se incluyen en bloques 
con el siguiente aspecto:

::: {.rmdejemplo data-latex=""}

Esto es un ejemplo. A continuación puede mostrarse código o no. Los ejemplos
pueden ir precedidos por un icono para identificar su campo de aplicación, por 
ejemplo `<svg aria-hidden="true" role="img" viewBox="0 0 576 512" style="height:1em;width:1.12em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:purple;overflow:visible;position:relative;"><path d="M455.1 30.6c3.6-12.7-3.7-26-16.5-29.7s-26 3.7-29.7 16.5l-4.2 14.7c-9.8-.4-19.9 .5-29.9 2.8c-12.1 2.8-23.7 5.9-34.9 9.4l-5.9-13.7c-5.2-12.2-19.3-17.8-31.5-12.6s-17.8 19.3-12.6 31.5l4.9 11.3c-22 9.4-42 20.1-60.2 31.8L228 82.7c-7.4-11-22.3-14-33.3-6.7s-14 22.3-6.7 33.3l7.8 11.6c-18 15-33.7 30.8-47.3 47.1L135 157.3c-10.4-8.3-25.5-6.6-33.7 3.7s-6.6 25.5 3.7 33.7l15 12c-2.1 3.2-4.1 6.5-6 9.7c-9.4 15.7-17 31-23.2 45.3l-9.9-3.9c-12.3-4.9-26.3 1.1-31.2 13.4s1.1 26.3 13.4 31.2l11.6 4.6c-.3 1.1-.6 2.1-.9 3.1c-3.5 12.5-5.7 23.2-7.1 31.3c-.7 4.1-1.2 7.5-1.6 10.3c-.2 1.4-.3 2.6-.4 3.6l-.1 1.4-.1 .6 0 .3 0 .1c0 0 0 .1 39.2 3.7l0 0-39.2-3.6c-.5 5-.6 10-.4 14.9l-14.7 4.2c-12.7 3.6-20.1 16.9-16.5 29.7s16.9 20.1 29.7 16.5l13.8-3.9c10.6 20.7 27.6 37.8 48.5 48.5l-3.9 13.7c-3.6 12.7 3.7 26 16.5 29.7s26-3.7 29.7-16.5l4.2-14.7c23.8 1 46.3-5.5 65.1-17.6L247 473c9.4 9.4 24.6 9.4 33.9 0s9.4-24.6 0-33.9l-10.6-10.6c9.1-14.1 15.1-30.5 17-48.3l.1-.8c.3-1.7 1-5.1 2.3-9.8l.2-.8 12.6 5.4c12.2 5.2 26.3-.4 31.5-12.6s-.4-26.3-12.6-31.5l-11.3-4.8c9.9-14.9 24.9-31.6 48.6-46l2.1 7.5c3.6 12.7 16.9 20.1 29.7 16.5s20.1-16.9 16.5-29.7L403 259.2c6.9-2.2 14.3-4.3 22.2-6.1c12.9-3 24.7-8 35.2-14.8L471 249c9.4 9.4 24.6 9.4 33.9 0s9.4-24.6 0-33.9l-10.6-10.6c12.2-19 18.6-41.6 17.6-65.1l14.7-4.2c12.7-3.6 20.1-16.9 16.5-29.7s-16.9-20.1-29.7-16.5l-13.7 3.9c-10.8-21.2-28-38-48.5-48.5l3.9-13.8zm-331 332.7l0 0L176 368l-51.9-4.7zM240 320c0 26.5-21.5 48-48 48s-48-21.5-48-48s21.5-48 48-48s48 21.5 48 48zm32-88c-13.3 0-24-10.7-24-24s10.7-24 24-24s24 10.7 24 24s-10.7 24-24 24z"/></svg>`{=html} Biología, `<svg aria-hidden="true" role="img" viewBox="0 0 512 512" style="height:1em;width:1em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:gold;overflow:visible;position:relative;"><path d="M512 240.2V256H0c0-20 10-38.7 26.6-49.8L274.9 40.7c8.6-5.7 18.6-8.7 28.9-8.7C418.8 32 512 125.2 512 240.2zm0 47.8V416c0 35.3-28.7 64-64 64H64c-35.3 0-64-28.7-64-64V288H512z"/></svg>`{=html} Ciencia y tecnología de Alimentos, o `<svg aria-hidden="true" role="img" viewBox="0 0 448 512" style="height:1em;width:0.88em;vertical-align:-0.125em;margin-left:auto;margin-right:auto;font-size:inherit;fill:green;overflow:visible;position:relative;"><path d="M210.6 5.9L62 169.4c-3.9 4.2-6 9.8-6 15.5C56 197.7 66.3 208 79.1 208H104L30.6 281.4c-4.2 4.2-6.6 10-6.6 16C24 309.9 34.1 320 46.6 320H80L5.4 409.5C1.9 413.7 0 419 0 424.5c0 13 10.5 23.5 23.5 23.5H192v32c0 17.7 14.3 32 32 32s32-14.3 32-32V448H424.5c13 0 23.5-10.5 23.5-23.5c0-5.5-1.9-10.8-5.4-15L368 320h33.4c12.5 0 22.6-10.1 22.6-22.6c0-6-2.4-11.8-6.6-16L344 208h24.9c12.7 0 23.1-10.3 23.1-23.1c0-5.7-2.1-11.3-6-15.5L237.4 5.9C234 2.1 229.1 0 224 0s-10 2.1-13.4 5.9z"/></svg>`{=html} Ciencia e Ingeniería Ambiental.  

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

Emilio López Cano, Estadístico y entusiasta de R. Actualmente soy Profesor Contratado Doctor en la [Escuela Técnica Superior de Ingeniería Informática](https://www.urjc.es/etsii) e investigador en el [Data Science Laboratory](http://www.datasciencelab.es) de la [Universidad Rey Juan Carlos](https://www.urjc.es). Mis intereses de investigación incluyen Estadística Aplicada, Aprendizaje Estadístico y Metodologías para la Calidad. Previamente he sido profesor e investigador en la [Universidad de Castilla-La Mancha](https://www.uclm.es), donde sigo colaborando en docencia e investigación, y Estadístico en empresas del sector privado de diversos sectores.

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
lenguaje de programación R](https://www.r-project.org), y en particular al _R Core Team_, al equipo
de [Posit (antes RStudio)](https://www.rstudio.com) y a los amigos de [R Hispano](http://r-es.org).



