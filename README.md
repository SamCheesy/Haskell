# Implementación de diversas funciones en Haskell

### Autores: Adrían Botero y Samuel Ruidiaz, *Ingenieros de Sistemas*

<img width="200" height="400" alt="image" src="https://github.com/user-attachments/assets/f03849ec-0f87-40ec-9b5d-ea482f901219" />

<img width="200" height="300" alt="image" src="https://github.com/user-attachments/assets/0840fd57-acbb-41ac-bb5e-0af4e164e516" />

<br/>


## Índice

1. **Descripción** [(ir aquí)](#1-descripción)
2. **Uso de funciones** [(ir aquí)](#2-uso-de-funciones)
3. **Pruebas con resultados** [(ir aquí)](#3-resultados-de-pruebas-en-cada-función)
4. **Problemas y soluciones en el desarrollo** [(ir aquí)](#4-problemas-y-soluciones-durante-el-desarrollo-del-proyecto)
5. **Conclusiones** [(ir aquí)](#5-conclusiones)


## 1. Descripción


### sobre Haskell

<img width="160" height="160" alt="image" src="https://github.com/user-attachments/assets/ea521ba7-e4f6-408e-8c7e-db7dd2e56853" align="right"/>

Haskell es un **Lenguaje de Programación Funcional de propósito general, y funcionalmente puro**, con evaluación *no estricta* y memorizada, y fuerte tipificación estática. Su nombre se debe al lógico estadounidense **Haskell Curry**, debido a su aporte al cálculo lambda, el cual tiene gran influencia en este lenguaje.


### sobre el proyecto
El objetivo de nuestro proyecto es la implementación de las funciones *rem_data*, *order_asc*, *exponential function*, *cosine function*, *natural logarithm*, y *discrete cosine transform (DCT)*, **mediante el uso del lenguaje de programación Haskell**.  

Para la realización de estas funciones, **no hicimos uso de funciones fuera de las fundamentales: +, -, /, *mod*, *fromEnum*, *toEnum*, *cos*, *fromIntegral*.**  


## 2. Uso de funciones  

> [!NOTE]  
> En cada uno de los links a continuación, se podrán visualizar los códigos de cada función, junto con la función main, **en donde se ejecutará** el código. Cada función tiene parámetros distintos, por lo que, después de cada link, **se proveerá una imagen junto con indicaciones para el correcto uso de las funciones.**

<br/><br/>
- [Función *rem_data* aquí](https://play.haskell.org/saved/ZyPpIO6D)
<img width="437" height="133" alt="image" src="https://github.com/user-attachments/assets/7c70f84d-1625-4730-a59c-9671694ff4bf" align="left"/>

Para el correcto uso de este código *rem_data*, **se debe colocar la lista a evaluar después de la función *rem_data*, mediante el uso de corchetes "[]", colocando dentro de los corchetes cuantos números quiera, colocando después de cada número una coma (,),** como se puede apreciar en la imagen.  

Luego de la lista (es decir, después de cerrar corchetes) **se debe colocar un espacio, y luego un número, el cual será nuestro número inicial, es decir, cualquier número menor a este será eliminado.**  

En el caso de la imagen, nuestro intervalo será desde 4, por lo que cualquier número menor a este **no será impreso.**  

Ahora, se coloca otro espacio y otro número, **el cual será nuestro número final, por lo que cualquier número mayor a este será eliminado.** En el caso de la lista de la imagen, se imprimirán todos los números entre 4 y 6.

<br/><br/>

- [Función *order_asc* aquí](https://play.haskell.org/saved/EBe07v6z)
<img width="475" height="88" alt="image" src="https://github.com/user-attachments/assets/bfd08073-8778-4f4d-99d9-34c702cc3fb8" align="right"/>

Para el correcto uso de la función *order_asc*, **se debe colocar la lista que queremos ordenar después de la función *order_asc*, mediante el uso de corchetes "[]",** **colocando dentro de los corchetes cuantos números quiera, colocando después de cada número una coma (,),** como se puede apreciar en la imagen.  

La *salida* de este código será la lista con los números **mayores en las primeras posiciones**, y de ahí colocar los menores secuencialmente.

<br/><br/>

- [Función *Transformación Discreta del Coseno* aquí](https://play.haskell.org/saved/nv9vKJdR)

<br/><br/>
<img width="506" height="114" alt="image" src="https://github.com/user-attachments/assets/dd58d379-af95-4e03-8010-cfc48a970d1f" />
<br/><br/>

Para el correcto uso de la función *Transformación Discreta del Coseno*, **primero debemos cambiar la variable `datos` (identificable en la imagen como `let datos = ...`) a la lista que queramos transformar, mediante el uso de corchetes "[]",** **colocando dentro de los corchetes cuantos números quiera, colocando después de cada número una coma (,),** como se puede apreciar en la imagen.  

**Esto sería todo, ya que la siguiente imagen solo define `resultado` como la evaluación de la función `transformadaCoseno` de la lista anteriormente definida,** y la última línea se encarga de imprimir el resultado/valor de la variable `resultado`.

<br/>

> [!NOTE]  
> Los valores resultantes de nuestra implementación de la *Transformación Discreta del Coseno* aplicada a cualquier lista **pueden variar un poco de los valores "reales" esperados, ya que serán resultados *aproximados*.**

<br/><br/>

- [Funciones matemáticas usando series numéricas aquí](https://play.haskell.org/saved/pLQRnV43)

<br/><br/>
<img width="490" height="87" alt="image" src="https://github.com/user-attachments/assets/c8176325-c7ab-4b34-8344-e6bfbd7708dd" />
<br/><br/>

En este código se encuentran las 3 funciones matemáticas requeridas para el problema, las cuales son: *Logaritmo natural*, *Coseno*, *Exponenciación*.  

Para el correcto uso de cada una, se tienen **dos argumentos**:  
1. El primer argumento **es el valor para el cual se quiere aproximar la función.**  
2. El segundo argumento **es el número de términos de la serie para mejorar la precisión del resultado.**

<br/>

> [!WARNING]  
> Entre más grande sea el valor del segundo argumento, más preciso será el resultado. Sin embargo, **cantidades muy grandes pueden afectar negativamente el rendimiento del programa.** 


## 3. Resultados de pruebas en cada función

A continuación, se presentan cada una de las funciones anteriormente mencionadas siendo probadas con distintos valores para asegurar su correcto funcionamiento frente a distintas situaciones.

<br/>

> [!IMPORTANT]  
> **La primera imagen muestra las pruebas realizadas al código mencionado**, y **la segunda muestra el output/salida de cada evaluación secuencialmente.**  

Cada prueba realizada al código tiene un comentario que indica exactamente qué se está evaluando.

<br/>

### *rem_data*

<img width="459" height="192" alt="image" src="https://github.com/user-attachments/assets/3347d2b5-0fab-4b70-868a-9f75bf7a165d" />

<br/>

<img width="118" height="83" alt="image" src="https://github.com/user-attachments/assets/ea0efd98-7e78-4538-9a63-f0a55ab10539" />

<br/>

### *order_asc*

<img width="495" height="293" alt="image" src="https://github.com/user-attachments/assets/cefa1196-71a0-4ee2-8d4c-5a76d7da3843" />

<br/>

<img width="235" height="132" alt="image" src="https://github.com/user-attachments/assets/03acbe57-867b-47ae-a380-594fd731da7f" />

<br/>

### *exponenciación*, *logaritmo natural* y *coseno*

<img width="551" height="285" alt="image" src="https://github.com/user-attachments/assets/f0602469-202c-4b81-a4e3-127c9ffe2c8f" />

<br/>

<img width="361" height="230" alt="image" src="https://github.com/user-attachments/assets/6d3013e8-ee04-49b3-b52c-dc0c010fff09" />

<br/>

### *Transformación Discreta del Coseno*

<img width="701" height="483" alt="image" src="https://github.com/user-attachments/assets/154b3edf-2df2-463e-9bbc-70bd51572cd8" />

<br/>

<img width="1192" height="324" alt="image" src="https://github.com/user-attachments/assets/f0a397b6-b0c8-4a16-92b4-dba1f765ee91" />

<br/><br/>

## 4. Problemas y soluciones durante el desarrollo del proyecto

> [!IMPORTANT]  
> **Cada problema planteado a continuación tendrá también su solución respectiva dentro del mismo texto.**

<br/>

Los principales problemas que se presentaron mientras desarrollábamos el proyecto fueron:  

- **El impedimento para usar otras funciones ya en Haskell aparte de las suministradas**: Esto gracias a que Haskell ya poseía muchas de las funciones necesarias para la realización de las distintas funciones, lo cual hubiera hecho el proceso mucho más eficiente debido a que no hubiéramos tenido que crear manualmente lo que necesitáramos (o lo que creíamos que necesitábamos), y tener que pensar en la lógica de cada función, consumiendo así el tiempo y nuestra energía.  

  La solución para esto fue pensar de manera lógica, *abstracta* y recursiva ante cada problema; pensar en qué posiblemente necesitáramos, funciones auxiliares, la lógica detrás de cada recursión, etc. Fue un proceso complicado y exhaustivo; sin embargo, fue a su vez enriquecedor en conocimiento, lógica adquirida para resolver problemas desde otros puntos de vista y análisis de problemas.

- **Organización**: La organización también fue un factor determinante en nuestra eficacia, ya que, al no tener un plan establecido para la realización del proyecto, donde definieramos de manera temprana tiempos de realización, ni definieramos tempranamente partes correspondientes, terminamos haciendo buena parte del proyecto en un poco de desorden.  

  La solución para esto fue, tras algo de tiempo perdido, comunicarnos entre sí el rol de cada uno, lo que cada uno estaba haciendo y lo que el otro debía realizar; también definir tiempos de realización de cada cosa e instrucciones para el otro que influyeran en la realización del proyecto.

- **Carga académica**: Durante este tiempo, estuvimos presionados por quices y parciales universitarios, los cuales también consumían nuestro tiempo para dedicar al proyecto, ya que teníamos que estudiar, repasar notas, realizar ejercicios para afianzar nuestros conocimientos, etc.  

  Todo esto terminó afectando nuestro rendimiento durante los últimos días. La solución para esto fue **distribuir muy bien nuestro tiempo** para cada cosa: el tiempo de estudio, el tiempo de clase, el tiempo de trabajo en el proyecto, el tiempo de realización de otros trabajos pendientes, etc.

<br/><br/>

## 5. Conclusiones

**A pesar que el desarrollo de este proyecto fue algo ciertamente retador**, debido a las limitaciones establecidas para el mismo, aprendimos muchas cosas nuevas en el camino.  

Aprendimos que **hay que ser más organizados a la hora de realizar proyectos**, a **analizar de una manera mucho más profunda distintas problemáticas lógicas**, a **pensar de una manera mucho más lógica y abstracta para enfrentar los problemas**.  

Aprendimos que, a pesar de lo difíciles que puedan parecer las circunstancias, **dentro de nosotros reside el poder de superar estos desafíos y ser capaces de avanzar frente a la adversidad**.  

**Pero si nunca lo intentamos, si desfallecemos y caemos a mitad de camino, nunca habremos sabido lo infinitos y capaces que somos, y aún más cuando se tiene a alguien a tu lado.**
