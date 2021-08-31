--- 
title: "Estadística Aplicada a las Ciencias y la Ingeniería"
author: "Emilio L. Cano"
date: "2021-08-31"
site: bookdown::bookdown_site
documentclass: book
bibliography: [book.bib, packages.bib]
url: https://emilopezcano.github.io/estadistica-ciencias-ingenieria/
cover-image: 'images/cover.png'
description: |
  Libro para asignaturas de Estadística en grados de Ciencias e Ingeniería.
  Puede ser útil también para asignaturas de Estadística en otros grados como
  Economía o ADE. Contiene una visión muy particular del autor 
biblio-style: apalike
csl: chicago-fullnote-bibliography.csl
# biblio-title: "Referencias"
# toc-title: "kk"
---



# Bienvenida {-}


<img src="images/cover.png" class="cover" width="250" height="328"/>
Este libro incluye los contenidos habitualmente presentes en el currículo 
de asignaturas de **Estadística** de los grados Ciencias e Ingenierías de universidades españolas. 
Si bien existe abundante material bibliográfico
que cubre los contenidos de estas asignaturas, quería elaborar un material
propio que no fuera solamente para mis clases sino algo más
_global_. Por otra parte, me motiva cubrir el hueco de los materiales
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
#> R version 4.1.1 (2021-08-10)
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
#> loaded via a namespace (and not attached):
#>  [1] knitr_1.33      xml2_1.3.2      magrittr_2.0.1 
#>  [4] downlit_0.2.1   R6_2.5.1        rlang_0.4.11   
#>  [7] fastmap_1.1.0   fansi_0.5.0     stringr_1.4.0  
#> [10] tools_4.1.1     xfun_0.25       utf8_1.2.2     
#> [13] jquerylib_0.1.4 htmltools_0.5.2 ellipsis_0.3.2 
#> [16] yaml_2.2.1      digest_0.6.27   tibble_3.1.4   
#> [19] lifecycle_1.0.0 crayon_1.4.1    bookdown_0.23.4
#> [22] sass_0.4.0      vctrs_0.3.8     fs_1.5.0       
#> [25] evaluate_0.14   rmarkdown_2.10  stringi_1.7.4  
#> [28] compiler_4.1.1  bslib_0.2.5.1   pillar_1.6.2   
#> [31] jsonlite_1.7.2  pkgconfig_2.0.3
```

Normalmente, la descripción o enunciado de los ejemplos se incluyen en bloques 
con el siguiente aspecto:

::: {.rmdejemplo}

Esto es un ejemplo. A continuación puede mostrarse código o no.

:::

Cuando el ejemplo incluya explicaciones sobre cómo resolverlo con software, 
estas explicaciones aparecerán en bloques con el siguiente aspecto:

::: {.rmdpractica}

**HOJA DE CÁLCULO**

La función `FACT` obtiene el factorial de un número x ($x!$):
  
`=FACT(5)`
$\boxed{\mathsf{120}}$

:::

También se incluirán con el formato anterior indicaciones para usar la calculadora 
científica, cuando esto sea posible. 

El texto incluye otros bloques con información de distinto tipo, como los siguientes:

::: {.rmdpremium}
Este contenido se considera avanzado. El lector principiante puede saltarse estos apartados
y volver sobre ellos en una segunda lectura.
:::

::: {.rmdcafe}
Estos bloques están pensados para incluir información curiosa o complementaria
para poner en contexto las explicaciones.
:::

## Sobre el autor {-}

Actualmente soy Profesor Ayudante Doctor en la Escuela Técnica Superior de Ingeniería Informática e investigador en el Data Science Laboratory de la Universidad Rey Juan Carlos. Sus intereses de investigación incluyen Estadística Aplicada, Aprendizaje Estadístico y Metodologías pra la Calidad. afiliaciones. Previamente ha sido profesor en la Universidad de Castilla-La Mancha, donde sigue colaborando en docencia e investigación, y Estadístico en empresas del sector privado de diversos sectores.

Presidente del subcomité técnico de normalización UNE (miembro de ISO) CTN 66/SC 3 (Métodos Estadísticos). Profesor en la Asociación Española para la Calidad (AEC). Presidente de la asociación “Comunidad R Hispano”.

Más sobre mí, información actualizada y publicaciones: https://emilio.lcano.com.  
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
como Javier M. Moguerza, Andrés Redchuk, Felipe Ortega, Mariano Prieto, 
Miguel Ángel Tarancón, Víctor M. Casero, Matías Gámez, y muchos otros (perdón
a l@s omitid@s por no ser más exhaustivo).

Especial agradecimiento a toda la comunidad del software libre y 
lenguaje de programación R, y en especial al R Core Team y al equipo
de RStudio.



