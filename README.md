
## Índice

1. **Descripción** [(ir aquí)](#1-descripción)
2. **Uso de funciones** [(ir aquí)](#2-uso-de-funciones)
3. **Pruebas con resultados** [(ir aquí)](#3-resultados-de-pruebas-en-cada-función)


## 1. Descripción
### sobre Haskell
Haskell es un **Lenguaje de Programación Funcional de propósito general, y funcionalmente puro**, con evaluación no estrícta y memorizada, y fuerte tipificación estática. su nombre se 
debe al lógico estadounidense Haskell Curry, debido a su aporte al cálculo lambda, el cual tiene gran influencia en este lenguaje.

### sobre el proyecto
El objetivo de nuestro projecto es la implementación de las funciones *rem_data*, *order_asc*, *exponential function*, *cosine function*, *natural logarithm*, y 
*discrete cosine transform (DCT)*, **mediante el uso del lenguaje de programación Haskell**. Para la realización de estas funciones, **no hicimos uso de funciones fuera de las 
fundamentales: +, -, /, *mod*, *fromEnum*, *toEnum*, *cos*, *fromIntegral*.**  

## 2. Uso de funciones  
> [!NOTE]
> En cada uno de los links a continuación, se podrán visualizar los códigos de cada función, junto con la función main, **en donde se ejecutará** el código. Cada función tiene parámetros distintos, por lo que, después de cada link, **se proveerá una imagen junto con indicaciones para el correcto uso de las funciones.**
- [Función *rem_data* aquí](https://play.haskell.org/saved/ZyPpIO6D)
<br/>
<br/>
<img width="437" height="133" alt="image" src="https://github.com/user-attachments/assets/7c70f84d-1625-4730-a59c-9671694ff4bf" />
<br/>
<br/>
Para el correcto uso de este código *rem_data*, se debe colocar la lista a evaluar despues de la función *rem_data*,
mediante el uso de corchetes "[]", colocando dentro de los corchetes cuantos números quiera, colocando después de cada número una coma (,)
como se puede apreciar en la imagen. Luego de la lista (es decir, despúes de cerrar corchetes) se debe colocar un espacio, y luego un
número, el cual será nuestro número inicial, es decir, cualquier número menor a este será eliminado. En el caso de la imágen, nuestro
intérvalo será desde 4, por lo que cualquier número menor a este no será impreso. Ahora, se coloca otro espacio y otro número, el cual será
nuestro número final, por lo que cualquier número mayor a este será eliminado. En el caso de la imágen, el número final será el 6, por lo que, en el caso de la lista de la imágen, se imprimirán todos los números entre 4 y 6.
<br/>
<br/>

- [Función *order_asc* aquí](https://play.haskell.org/saved/EBe07v6z)
<br/>
<br/>
<img width="475" height="88" alt="image" src="https://github.com/user-attachments/assets/bfd08073-8778-4f4d-99d9-34c702cc3fb8" />
<br/>
<br/>
Para el correcto uso de la función *order_asc*, se debe colocar la lista que queremos ordenar después de la función *order_asc*, mediante el uso de corchetes "[]", colocando dentro de los corchetes cuantos números quiera, colocando después de cada número una coma (,)
como se puede apreciar en la imagen. La sálida de este código será la lista con los numeros mayores en las primeras posiciones, y de 
ahí, colocar los menores.
<br/>
<br/>

- [Función *Transformación Discreta del Coseno* aquí](https://play.haskell.org/saved/nv9vKJdR)
<br/>
<br/>
<img width="506" height="114" alt="image" src="https://github.com/user-attachments/assets/dd58d379-af95-4e03-8010-cfc48a970d1f" />
<br/>
<br/>
Para el correcto uso de la función *Transformación Discreta del Coseno*, primero, debemos cambiar la variable datos (identificable en la imagen como let datos =...) a la lista que querramos transformar, mediante el uso de corchetes "[]", colocando dentro de los corchetes cuantos números quiera, colocando después de cada número una coma (,)
como se puede apreciar en la imagen. Esto sería todo, ya que la siguiente imagen solo define "resultado" como la evaluación de la función "transformadaCoseno" de la lista anteriormente definida, y la última línea se encarga de imprimir el resultado/valor de la variable "resultado".
<br/>
<br/>

- [Funciones matemáticas usando series numéricas aquí](https://play.haskell.org/saved/pLQRnV43)
<br/>
<br/>
<img width="490" height="87" alt="image" src="https://github.com/user-attachments/assets/c8176325-c7ab-4b34-8344-e6bfbd7708dd" />

<br/>
<br/>

En este código se encuentran las 3 funciones matemáticas requeridas para el problema, las cuales son: *Logaritmo natural*, *Coseno*, *Exponenciación*. Para el correcto uso de cada una, se tienen dos argumentos: El primer argumento es el valor para el cual se quiere apróximar la función. El segundo argumento es el número de términos de la serie para mejorar la precisión del resultado.<br/>
<br/>

> [!WARNING]
> Entre más grande sea el valor del segundo argumento, más preciso sera el resultado. Sin embargo, **cantidades muy grandes pueden afectar negativamente el rendimiento del programa.** 

## 3. Resultados de pruebas en cada función
A continuación, se presentan cada una de las funciones anteriormente mencionadas siendo probadas con distintos valores para asegurar su correcto funcionamiento frente a cualquier situación.

<br/>

> [!IMPORANT]
> **La primera imagen muestra las pruebas realizadas al código mencionado**, y **la segunda muestra el output/salida de cada evaluación secuencialmente.** Cada prueba realizada al código tiene un comentario que indica exactamente qué se está evaluando.

<br/>

### *order_asc*


<img width="495" height="293" alt="image" src="https://github.com/user-attachments/assets/cefa1196-71a0-4ee2-8d4c-5a76d7da3843" />

<br/>

<img width="235" height="132" alt="image" src="https://github.com/user-attachments/assets/03acbe57-867b-47ae-a380-594fd731da7f" />




