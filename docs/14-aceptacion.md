
# Inspección por muestreo {#aceptacion}








## Introducción



La norma ISO 9000 [@une:iso:9000] define la calidad como el "grado en el que un
conjunto de **características** inherentes de un **objeto** cumple con los 
**requisitos**"^[Los términos en negrita están a su vez definidos en la propia
norma.]. Así pues, cualquiera que sea el objeto de una empresa u organización,
el aseguramiento de la calidad ha de ser una de sus principales preocupaciones.
El **aseguramiento de la calidad** es la "parte de la **gestión de la calidad**
orientada a proporcionar confianza en que se cumplirán los **requisitos de la 
calidad**". 

La forma en que se proporciona esta confianza en el cumplimiento de los requisitos
es el objeto de este capítulo. Una forma de proporcionar esta confianza es medidante
la inspección. La **inspección** se define como la "determinación de la
conformidad con los requisitos especificados".
Así, el procedimiento más seguro de proporcionar
esta confianza es realizar una inspección 100% de los productos que se
envían a los clientes, rechazando los que no cumplen los requisitos.





Pero la inspección 100% no asegura por sí sola que todos los productos
que llegan a los clientes sean conformes, ya que la propia inspección está sujeta a 
errores, ya sea la inspección automática o manual. La fatiga humana, el
estrés y otras circunstancias pueden llevar a que la inspección 100%
sea incluso menos efectiva que la inspección por muestreo. Además,
la inspección 100% tiene otros inconvenientes, como:

- La formidable tarea que supone a menos que se lleve a cabo con equipos
de verificación automáticos o con lotes muy pequeños.

- Es muy costosa.

- Es inviable cuando dicha inspección es destructiva, es 
decir, la misma prueba de verificación hace el elemento no conforme.



La alternativa a la inspección 100% es la inspección por muestreo, en la que,
a grandes rasgos, se selecciona un subconjunto de elementos del grupo considerado.
La selección de estas muestras y las decisiones a tomar tras la inspección se
debe realizar con criterios estadísticos, basándose en la experiencia con el 
producto y los niveles de calidad requeridos. Así, asumiendo que se realiza 
el muestreo aleatorio y unas reglas para variar el tamaño de la muestra y la
frecuencia del muestreo, se puede evaluar estadísticamente el proceso.



Se deben evitar por todos los medios el realizar muestreos "ad-hoc", como
muestras de conveniencia o porcentajes arbitrarios sin ningún criterio. 
Por contra, utilizando los procedimientos descritos aquí se pueden
especificar planes de muestreo que incluyan reglas de cambio como se
verá en el siguiente apartado. Ahora bien, ¿cuándo podemos pasar de la
inspección 100% a la inspección por muestreo? La figura \@ref(fig:metodos)
muestra la relación entre el muestreo de aceptación y otras técnicas
estadísticas para la calidad. En primer lugar, partimos de la base de
que tenemos un sistema de medición fiable. Para ello podemos realizar
un análisis del sistema de medición (MSA, _Measurement System Analysis_)
por ejemplo mediante un estudio de repetibilidad y reproducibilidad (R&R).
Una vez estamos seguros de que el sistem de medición es adecuado, podemos
empezar a hacer SPC. En primer lugar, tenemos que asegurar la estabilidad
del proceso. Para ello utilizamos los gráficos de control. Si el proceso
está bajo control estadístico (tanto en su localización como en su
dispersión, ver capítulo \@ref(ch:gc)), entonces podemos medir la capacidad
del proceso. Hasta que el proceso esté bajo control, podemos medir el
rendimiento del proceso, pero no su capacidad (ver capítulo \@ref(ch:capacidad)).
Una vez el proceso está bajo control y podemos calcular su capacidad,
entonces podemos decidir pasar de la inspección 100% a la inspección 
por muestreo. Esto lo haremnos cuando el proceso cumpla el requisito de
capacidad. Un criterio puede ser que el 
índice de capacidad $C_{pk}$ sea mayor que uno, aunque en productos
que requieran una alta fiabilidad se preferirá esperar a tener un
índice $C_{pk}$ de al menos $1.33$.

<div class="figure">
<img src="images/metodos.png" alt="Relación entre los métodos estadísticos para el control de la calidad y los procesos" width="100%" />
<p class="caption">(\#fig:metodos)Relación entre los métodos estadísticos para el control de la calidad y los procesos</p>
</div>








## Planes de muestreo de aceptación



Ya vimos que la inspección 100% en la práctica no garantiza que todos los
objetos lleguen conformes al cliente. Sin embargo, en un mundo ideal,
teóricamente esto sería posible. En cambio, al realizar la inspección
por muestreo estamos incurriendo irremediablemente, como en cualquier
método estadístico, en errores por el propio
muestreo. No obstante, al utilizar métodos estadístidos solventes,
estos errores los vamos a poder medir, delimitando así los riesgos.





Los planes de muestreo se van a basar en los riesgos que están dispuestos
a asumir el productor y el consumidor. Para calcular estos riesgos, ambos
deben acordar cuál es el **Nivel de Calidad de Aceptación** (**NCA**, _AQL Acceptance 
Quality Level_), que representa el promedio de la proporción de 
elementos defectuosos en una serie de lotes (generalmente muy bajo, pero mayor de cero).
Así, los planes de muestreo de aceptación se diseñan de tal forma que 
la probabilidad de rechazar un lote que tenga una proporción de defectuosos
menor que el LCA (riesgo del productor) sea muy baja. Por otra parte,
el cliente querrá tener una probabilidad muy alta de rechazar un lote que
tenga una gran proporción de defectos, a la que llamaremos 
**Calidad Límite** (**CL**, _LQ Limiting Quality_), y por tanto que
la probabilidad de aceptar un lote que tenga una proporción de defectos mayor 
que la CL (riesgo del consumidor) sea también baja. 




Un **plan de muestreo** es "la combinación del **tamaño de la muestra** a
emplear y los criterios de aceptación del lote asociados" (UNE-ISO 2859-1, 3.1.17 [@une:iso:2859-1]).
En la versión más sencilla de un plan de muestreo para la aceptación, obtendríamos
un número $n$ de elementos a extraer del lote, en los que comprobaríamos el valor
de un atributo o de una variable. Con los valores obtenidos de la muestra 
calculamos un estadístico (por ejemplo número de defectos $d$ si comprobamos un
atributo, o media de la muestra $\overline{x}$ si medimos una variable), y
lo comparamos con los criterios de aceptación, llegando así a la decisión
de aceptar o rechazar el lote.

En la práctica, combinamos varios planes de muestreo en un **esquema de muestreo**
[UNE-ISO 2859-1, 3.1.18] que incluye reglas para cambiar de un plan a otro.
Por ejemplo, del cálculo anterior puede resultar la decisión de aceptar el lote,
rechazarlo, o tomar un nueva muestra (es decir, pasar a otro plan de muestreo).





Por otra parte, los planes y esquemas de muestreo se pueden agrupar en **sistemas
de muestreo** [UNE-ISO 2859-1, 3.1.18], con sus propias reglas de cambio de
unos a otros. Por ejemplo, sistemas basados en el límite de calidad de aceptación
o sistemas de lotes salteados.

Diferenciamos además tres intensidades de inspecciones por muestreo, que se usarán en los 
distintos esquemas de muestreo:

1. **Inspección normal**: "utilización de un plan de muestreo con un criterio de
aceptación que ha sido ideado para asegurar al fabricante una alta probabilidad
de aceptación cuando la **media del proceso** del lote es mejor que el **NCA**"  [UNE-ISO 2859-1, 3.1.20].

2. **Inspección rigurosa**: Criterio de aceptación más riguroso que en la inspección normal.

3. **Inspección reducida**: Tamaño de muestra más pequeño que en la inspección normal,
y criterio de aceptación comparable a esta.



Los parámetros de los distintos planes, esquemas y sistemas de muestreo
los van a determinar las distribuciones de probabilidad subyacentes a los
procesos, partir los riesgos del productor y del
consumidor. En la práctica, se buscan estos valores en las tablas de la 
norma adecuada para el plan de muestreo, o bien se utiliza software para
obtenerlos.



En los siguientes apartados vamos a explicar los diferentes planes de
muestreo aplicando las normas UNE-ISO. La tabla \@ref(tab:isomuestreo)
muestra las normas de las dos series más importanes sobre muestreo
de aceptación que emanan del subcomité ISO TC 69/SC5 Acceptance Sampling.
La serie de normas ISO 2589 consta de 6 partes sobre "Procedimientos de 
muestreo para la inspección por atributos", todas ellas traducidad
y adoptadas como normas UNE-ISO. 
La serie ISO 3951 trata los Procedimientos de muestreo para la inspección 
por variables. Consta de 5 partes de las que solo están traducidas
las dos primeras



Table: (\#tab:isomuestreo)Estándares ISO o UNE-ISO para SPC

|Código               |Título                                                                                                                                                                                                                          |
|:--------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|UNE-ISO 2859-1:2012  |Planes de muestreo para las inspecciones lote por lote, tabulados según el límite de calidad de aceptación (LCA)                                                                                                                |
|UNE-ISO 2859-2:2012  |Planes de muestreo para las inspecciones de lotes independientes, tabulados según la calidad límite (CL)                                                                                                                        |
|UNE-ISO 2859-3:2014  |Procedimientos de muestreo con lotes no inspeccionados.                                                                                                                                                                         |
|UNE-ISO 2859-4:2013  |Procedimientos para la evaluación de los niveles de calidad declarados                                                                                                                                                          |
|UNE-ISO 2859-5:2014  |Sistema de planes de muestreo secuencial para la inspección lote por lote tabulados según el límite de calidad de aceptación (LCA)                                                                                              |
|UNE-ISO 2859-10:2013 |Introducción a la serie de normas ISO 2859 sobre el muestreo para la inspección por atributos                                                                                                                                   |
|UNE-ISO 3951-1:2012  |Especificaciones para los planes de muestreo simples tabulados según el nivel de calidad aceptable (NCA) para la inspección lote por lote para una característica de calidad única y un nivel de calidad aceptable (NCA) único. |
|UNE-ISO 3951-2:2012  |Especificación general para los planes de muestreo simples tabulados según el nivel de calidad aceptable (NCA) para la inspección lote por lote de características de calidad independientes.                                   |
|ISO 3951-3:2007      |Double sampling schemes indexed by acceptance quality limit (AQL) for lot-by-lot inspection                                                                                                                                     |
|ISO 3951-4:2011      |Procedures for assessment of declared quality levels                                                                                                                                                                            |
|ISO 3951-5:2006      |Sequential sampling plans indexed by acceptance quality limit (AQL) for inspection by variables (known standard deviation)                                                                                                      |










## Planes de muestreo por atributos



### La serie de normas ISO 2859

Se dan aquí algunas pinceladas de los usos de cada una de las normas
de la serie, véase la norma UNE-ISO 2859-10 [@une:iso:2859-10] para una
introducción más completa. 


\BeginKnitrBlock{rmdcafe}<div class="rmdcafe">Las normas internacionales
que se utilizan actualmente tienen su origen en las _Military Standards_
(MIL-STD)
desarrolladas por el ejército en USA el siglo pasado y ampliamente
aceptadas en todo el mundo. </div>\EndKnitrBlock{rmdcafe}

- UNE-ISO 2859-10, Introducción a la serie de normas ISO 2859 sobre el muestreo para la inspección por atributos.
Esta norma proporciona información y ejemplos básicos sobre cada una del resto de partes 
de la serie, además de una introducción general al muestreo.

- UNE-ISO 2859-1, Planes de muestreo para las inspecciones lote por lote, tabulados según
el límite de calidad de aceptación (LCA). 
Se aplica a la inspección para la aceptación de lotes que se producen de forma continua.

- UNE-ISO 2859-2, Planes de muestreo para las inspecciones de lotes independientes, tabulados según la calidad límite (CL).
Se aplica a la inspección para la aceptación de lotes aislados. La principal diferencia con la anterior es
que no se tiene en cuenta el LCA. En ocasiones, los lotes son considerados continuos para el suministrador
y aislados para el consumidor.

- UNE-ISO 2859-3, Procedimientos de muestreo con lotes no inspeccionados^[_skip-lot sampling_, traducido a veces como
lotes salteados o lotes discontinuos].
Solo es aplicable a series continuas de lotes y no lotes aislados. Permite reducir la inspección saltándose 
algunos lotes. Solo se recomienda si el proceso ha alcanzado cierto nivel de excelencia.

- UNE-ISO 2589-4, Procedimientos para la evaluación de los niveles de calidad declarados. 
Estos procedimientos son adecuados para inspecciones formales o autitorías, para verificar
un nivel de calidad declarado (NCD). No se debe utilizar para muestreos de aceptación, sino más bien
para estimar el número o proporción de defectos.

- UNE-ISO 2859-5, Sistema de planes de muestreo secuencial para la inspección lote por lote tabulados según el límite de calidad de aceptación (LCA).
Esta parte suplementa a la 2859-1, proporcionando esquemas de muestreo secuencial. El muestreo secuencial
puede reducir el tamaño de la muestra en cada lote, pero introduce complejidad en la aplicación de las 
regals y complica también la organización. Se requiere una serie suficientemente grande de lotes y no es adecuada
para lotes individuales.














### Planes de muestreo en la norma ISO 2859-1

Estos planes de muestreo son apropiados para series de lotes fabricados
de forma continua, basados en el Límite de calidad de aceptación (LCA).
Se recomienda clasificar los tipos de no conformidades
en categorías, ya que normalmente se inspecciona más de una característica.

El LCA es uno de los parámetros básicos del plan de muestreo, junto
con la letra código. Se establece por contrato o por convención, 
pero no implica que el proveedor tenga derecho
a enviar productos no conformes de forma consciente.
Se puede expresar como porcentaje de elementos no conformes
o como número de no conformidades en 100 unidades, y no 
debería ser mayor del 10% o 1000 no conformidades por 
100 unidades respectivamente.
La media del proceso debería mantenerse muy por debajo
del LCA para evitar excesivos rechazos de lotes.
Existen una serie de valores de LCA recomendados,
que son los que se usan en las tablas de las normas. 
Estos valores pueden ser $0.010$, $0.015$,
$0.025$, $0.040$, $0.65$, $1.0$, $1.5$, $2.5$, $4.0$,
$6.5$ y $10$% cuando se mide la proporción de
elementos no conformes. Cuando se miden el
número de no conformidades por 100 unidades
(porque un elemento pueda tener más de una),
lo LCA recomendados son los anteriores y además:
15, 25, 40, 65, 100, 150, 250, 400, 650, 1000.













Los planes de muestreo determinarán la 
**aceptabilidad** de un lote. Se prefiere hablar
de aceptación o no aceptación (evitando el término
"rechazo"). La "autoridad responsable"^[La norma utiliza
este término para mantener la neutralidad entre las partes
interesadas] debe decidir sobre la **disposición** de los
lotes no aceptados: desechar, clasificar, reprocesar,
reevaluar, retener, etc. Igualmente, se debe decidir
qué hacer con las unidades no conformes encontradas en 
un lote aceptado. Como se ha indicado antes, cuando
la conformidad dependa de varias características se
pueden categorizar para determinar un conjunto de
planes de muestreo, que normalmente tendrán el mismo
tamaño de muestra pero distintos números de aceptación
y rechazo. Por otra parte, se puede decidir sobre 
categorías críticas de forma que el muestreo solo
afecta a las categorías no críticas, pero las críticas
se inspeccionan al 100%. Un lote no aceptado se puede
presentar para reinspección después de corregir o reemplazar las unidades no
conformes, posiblemente cambiando el plan.






Con respecto a la extracción de muestras, es importante resaltar que 
las decisiones tomadas a partir del resultado de los muestreos son solo
válidos si se cumplen las hipótesis estadísticas. Una de estas hipótesis
es la aleatoriedad de la muestra. Para realizar el muestreo estadístico,
cada unidad del lote debe poder ser identificada con un número entre 1 y $N$
(tamaño del lote). Entonces se seleccionan aleatoriamente $n$ identificadores,
y esas serán las piezas a inspeccionar. Existen varios métodos de muestreo,
siendo los más importantes:

- En el muestreo aleatorio simple: todas las unidades tienen la misma
probabilidad de ser elegidas.

- Muestreo estratificado: tenemos varios grupos y todos deben estar 
representados con al menos un elemento. Tomamos una muestra dentro
de cada estrato. Dentro de los estratos, 
normalmente muestreo aleatorio simple.

- Muestreo por conglomerados: tenemos varios grupos tomamos una
muestra de los grupos e inspeccionamos todos los elementos de
los grupos seleccionados. 

- Muestreo en varias etapas: se pueden mezclar los anteriores,
las sucesivas muestras se extraen de la muestra anterior.





La norma ISO 24153, _Random sampling and randomization procedures_
[@iso:24153],
proporciona indicaciones y métodos para obtener muestras aleatorias.
En general, los algoritmos de generación de números aleatorios
que incorporan las aplicaciones informáticas son válidos para este
cometido^[Es aconsejable utilizar software estadístico especializado,
ya que son muy superiores a los que ofrecen las hojas de cálculo como
Excel.]. 





Si no existe una necesidad contractual de realizar
un muestreo probabilístico, o este es muy costoso de realizar
(económica u organizativamente) es práctica común realizar
muestreos sistemáticos. El muestreo sistemático se desarrolla
según un plan metódico, y puede ser periódico o localizado.


\BeginKnitrBlock{rmddef}<div class="rmddef">>**Muestreo sistemático periódico**
>
> Muestreo sistemático en el que las unidades muestrales de una
> población están dispuestos en orden, y numerados de 1 a $N$
> en la muestra, formada por tanto por las unidades muestrales
> numeradas:
>
> $$h, h+k, h+2k, h + (n-1)k,$$
>
> donde $h$ y $k$ son enteros positivos que satisfacen las
> relaciones:
> $$nk < N < n(k+1);\;h<k;$$
>
> $h$ generalmente se toma al azar entre los $k$ primeros números enteros, y $n$ es el número de unidades muestrales.
>
> UNE-ISO 3534-2:2013 Estadística. Vocabulario y símbolos -- Parte 2: Estadística Aplicada

</div>\EndKnitrBlock{rmddef}





En todo caso, hay que tomar ciertas reservas y precauciones al realizar
muestreos no aleatorios. En primer lugar, la muestra debe ser 
representativa del lote, por lo que para que el muestreo sistemático
tenga validez la producción debe ser independiente de la base sistemática
(por ejemplo, que no haya variación diferente en los puntos de muestreo)



Se establacen tres intensidades de ^**inspección: normal, rigurosa o reducida**.
A menos que se establezca otro criterio por la autoridad competente,
al comienzo de la inspección se utiliza la inspección normal, 
cambiando cuando sea necesario a rigurosa, reducida o volver a normal según las 
reglas establecidas y que se esquematizan en la figura \@ref(fig:reglascambio).
Pasamos de inspección normal a rigurosa si dos de cinco o menos lotes 
seguidos no son aceptados, y volvemos a la inspección normal
cuando son aceptados cinco lotes seguidos. Pasamos de inspección
normal a reducida cuando se obtiene una puntuación de cambio 
de al menos 30 o se han aceptado 10 lotes en inspección normal, siempre que la producción sea uniforme y el
cambio esté aceptado por la autoridad responsable. Volvemos a inspección
normal cuando un lote no sea aceptado o la producción se vuelva irregular.

<div class="figure">
<img src="images/reglascambio.png" alt="Reglas de cambio entre inspección normal, rigurosa y reducida" width="100%" />
<p class="caption">(\#fig:reglascambio)Reglas de cambio entre inspección normal, rigurosa y reducida</p>
</div>










Si estando en inspección reducida durante cierto tiempo y se dan las
condiciones para aplicar el muestreo con lotes no inspeccionados,
podríamos pasar a aplicar la norma UNE-ISO 2859-3. Si estando
en inspección rigurosa y no aceptamos 5 lotes consecutivos deberíamos
suspender la inspección por muestreo.



La puntuación de cambio se inicializa en cero al empezar la inspección normal.
Después, con cada lote inspeccionado se actualiza:

1. En muestreo simple:
  - Se suma 3 si el número de aceptación es mayor o igual a 2 y se acepta el lote.
  - Se suma 2 si el número de aceptación es 0 o 1 y se acepta el lote.
  - En otro caso, se restablece a cero.
2. En muestreo doble:
  - Se suma 3 si se acepta después de la primera muestra. Si no, se restablece a cero.
3. En muestreo múltiple: 
  - Se suma 3 si se acepta en la tercera muestra. Si no, se restablece a cero.




Para elegir el **Plan de muestreo** se establecen tres niveles de
inspección general: I, II, y III, y cuatro niveles especiales S-1, S-2, S-3
y S-4. Estos últimos son adecuados para pruebas destructivas, ya que
requieren tamaños de muestra mucho menores. En general, se emplea el nivel II
a menos que se requiera una menor (I) o mayor (II) discriminación. El nivel 
de inspección debe mantenerse al cambiar entre inspección normal, rigurosa y
reducida.



El tamaño de la muestra se determina por la "letra código", tabulada
en la tabla 1 de la norma, en función del tamaño del lote y del nivel
de inspección. 

\BeginKnitrBlock{rmdejemplo}<div class="rmdejemplo">Para lotes de tamaño $N=10.000$ y nivel de inspección II, la letra código
es la $N$.</div>\EndKnitrBlock{rmdejemplo}





El **plan de muestreo** se obtiene de las tablas 2, 3, 4 y 11 de la norma.
Cada una de las tablas está disponible para la inspección normal, reducida y
rigurosa. Además, tenemos tablas para tres tipos de muestreos:

1. Simple: un único número de aceptación y rechazo. Si el número de defectuosos
es menor o igual que el número de aceptación, se acepta el lote. Si es mayor
o igual que el número de rechazo, se rechaza.

2. Doble: primera muestra se miran números aceptación y rechazo. 
Si el número de defectuosos (o defectos) es menor o igual que el número de
aceptación, se acepta. Si es mayor o igual que el número de rechazo, se 
rechaza. Si está entre estos dos números, se extrae una segunda muestra y 
se comprueban los números de aceptación y rechazo.
El número de defectuosos se acumula.

3. Múltiple: igual que el anterior, con hasta 5 posibles muestras obtenidas.

El muestreo simple generalmente implica menos complicaciones administrativas
y es más sencillo de manejar. Los muestreos doble y múltiple resultan
en tamaños de muestra menores para un mismo riesgo.

Si no hay un plan de muestreo para la letra código obtenida, la tabla 
direcciona con una flecah a otra letra código, que es la que hay que usar.



\BeginKnitrBlock{rmdejemplo}<div class="rmdejemplo">Para la letra código $N$, y LCA = $0.1$% y tipo de muestreo simple, 
correspondería un tamaña
de muestra $n = 500$. El número de aceptación es 1 y el de rechazo 2.
Si se encuentra 1 o ningún elemento defectuoso, se acepta el lote. Si 
se encuetran 2 o más, se rechaza.</div>\EndKnitrBlock{rmdejemplo}








Otras consideraciones de la norma:

- Curvas características de operación (OC): representan para varios tamaños
de muestra la relación entre el porcentaje real de defectos y la probabilidad
de ser aceptados en un determinado plan.

- Tablas para el límite de la calidad media de salida.

- Curvas para comparar tamaños medios de muestra

- Tablas de riesgos del consumidor y riesgos del fabricante

- Planes con número de aceptación fraccionario



### Planes de muestreo en la norma ISO 2859-2

Esta norma incluye el punto de vista del consumidor mediante la Calidad Límite (CL).
Presenta planes de muestreo para una combinación de LCA con probabilidad de aceptación
de $0.95$ y cl.

Se deben elegir uno de estos dos procedimientos:

- **Procedimiento A**: suminstrador y cliente consideran los lotes como independientes.

- **Procedimiento B**: El suministrador considera los lotes continuos y el cliente aislado.

En el procedimiento A, a partir del tamaño del lote y la calidad límite se obtiene 
el tamaño de muestra $n$ y el número de aceptación (Tabla A de la norma). Información
adicional para el productor se puede encontrar en las tablas D1 y D2.

En el procedimiento B, a partir del tamaño del lote, la calidad límite y el nivel de inspección
(ver apartado anterior), se obtiene 
el tamaño de muestra $n$ y el número de aceptación.
Existen varias tablas B para distintos valores de CL. Dentro de cada tabla el tamaño
del lote y nivel de inspección determinan e $n$ y $Ac$, además de proporcionar
el LCA equivalente.












Se pueden combinar las tablas para muestreos dobles y múltiples
de la parte 1 para aplicarlos a este tipo de muestreos.

### Planes de muestreo en la norma ISO 2859-3

Solo es aplicable a series continuas de lotes y no lotes aislados. Permite reducir la inspección saltándose algunos lotes. Solo se recomienda si el proceso ha alcanzado cierto nivel de excelencia.



### Planes de muestreo en la norma ISO 2859-4

Adecuados para inspecciones formales o autitorías, para verificar un nivel de calidad declarado (NCD). No se debe utilizar para muestreos de aceptción, sino más bien para estimar el número o proporción de defectos.



### Planes de muestreo en la norma ISO 2859-5

El muestreo secuencial puede reducir el tamaño de la muestra en cada lote, pero introduce complejidad en la aplicación de las regals y complica también la organización. Se requiere una serie suficientemente grande de lotes y no es adecuada para lotes individuales.




## Planes de muestreo por variables



En los muestreos de aceptación por variables,
básicamente se estima el porcentaje de defectos basados en muestras
en las que se mide una característica.

### Planes de muestreo en la norma ISO 3951-1

Los planes de muestreo obtenidos con esta norma son aplicables cuando
se aplica a lotes continuos, en los que se considera una sola 
característica de calidad, la fabricación es estable y está bajo control estadístico,
la característica es aproximadamente normal, y se acuerdan límites de especificación
superior, inferior, o ambos.




La mayoría de las definiciones y conceptos de la norma ISO 2859-1 aplican aquí,
ya que comparten la misma filosofía. No obstante hay algunas diferencias.

Antes de obtener los planes de muestreo se debe decidir si hacerlo por
variables o por atributos. Por variables los tamaños de muestra serán menores,
pero los planes más complejos sobre todo de entender.

Después hay que elegir uno de los dos métodos:el método $s$ y el método $\sigma$.
A continuación el LCA y el nivel de inspección (normalmente, el II).






Aplicamos el método $s$ cuando no podemos dar por conocido el verdadero
valor d $\sigma$ (desviación típica de la población). Procedemos como sigue:

1. Con el nivel de inspección y tamaño de lote, obtener letra código.

2. Buscar tamaño de lote y constante de aceptabilidad $k$ en las tablas,
según tipo de límites, letra código y LCA.

3. Tomar muestra aleatoria de tamaño $n$, calcular $\bar{x}$ y $s$

4. Si $\bar{x}$ está fuera de los límites se rechaza el lote directamente

5. Si no, se calcula el estadístico de calidad:

$$Q_U=\frac{U-\bar{x}}{s}, \; o\;  Q_L = \frac{\bar{x}-L}{s}$$

6. Se compara con la constante $k$. Si es mayor, se acepta, si es menor, no se acepta.

Para límites de especificación dobles la norma proporciona métodos gráficos.




Para el método $\sigma$ se sigue el mismo procedimiento que en el método
$s$, sustituyendo $\sigma$ por $s$, que se tiene que calcular para ir
verificando que $\sigma$ es constante. La constante $k$ se busca en las tablas adecuadas.





El muestreo de aceptación por variables puede combinarse con el uso de
gráficos de control dada la imnportancia de mantener la estabilidad del
proceso y su normalidad. Se puede decidir cambiar entre un método y otro
en función de la seguridad que tengamos de la estabilidad de $\sigma$.
Asimismo, se aplican los criterios para cambiar entre inspección normal, rigurosa y 
reducida.




### Planes de muestreo en la norma ISO 3951-2

Esta parte de la norma proporciona un procedimiento más general
del que aparece en la parte 1, por lo que es complementaria
a esta. Incorpora el criterio de aceptabilidad $p*$ además
del $k$. Este métdodo permite usar características
multivariantes. Esta norma requiere un procedimiento más 
profundo de métodos estadísticos y distribuciones de probabilidad para
su correcta aplicación.




## Esquema de selección de planes de muestreo



La figura \@ref(fig:seleccionplanes) proporciona un esquema
de selección de planes de muestreo de entre los explicados en 
este capítulo.

<div class="figure">
<img src="images/esquemaplanes.png" alt="Esquema de selección de planes de muestreo" width="100%" />
<p class="caption">(\#fig:seleccionplanes)Esquema de selección de planes de muestreo</p>
</div>




