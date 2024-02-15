## Sesión 4


## Kit avanzado

Dónde comprar el [Kit avanzado](https://tienda.bricogeek.com/microbit/1686-starter-kit-sensores-37-en-1-para-microbit.html)

[![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/starter-kit-sensores-37-en-1-para-microbit-peque.png)](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/starter-kit-sensores-37-en-1-para-microbit.png)

[Wiki del kit](https://wiki.keyestudio.com/KS0361(KS0365)_keyestudio_37_in_1_Starter_Kit_for_BBC_micro:bit)



[Extensor para micro:bit](https://tienda.bricogeek.com/microbit/1706-keyestudio-shield-para-sensores-v2-para-microbit.html)

Es la pieza clave para poder conectar  sensores estándar a la micro:bit

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/extensor.png)

**Sensor de temperatura PTC**

Sensor de temperatura muy barato, pero más complejo de usar

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/sensor-temperatura-ptc.png)

**Sensor con medida lineal de temperatura LM35**, medimos el voltaje y con una sencilla operación determinamos la temperatura

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/sensor-temperatura-lineal-lm35.png)

**Sensor de humedad de suelo** nos permite medir la humedad del suelo midiendo la conductividad entre sus dos "patitas" al introducirlo en la tierra

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/sensor-humedad-suelo.png)

**Sensor de nivel de agua o de lluvia** dependiendo de la candidad de agua que toque sus pistas produce una señal diferente 

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/sensor-lluvia.png)

**Sensor de nivel de luz** que nos da un voltaje proporcional al nivel de luz recibida. No está calibrado y la medida no tiene una medida concreta.

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/sensor-luz-ldr.png)

**Sensor de gases** da una medida aproximada del CO2 del aire. No está calibrado, da una medida relativa.

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/sensor-gas.png)

**Sensor de llama** es el que se usa como detector de incendios

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/sensor-llama.png)

**Sensor de alcohol** es el que tienen los alcoholímetros. No está calibrado, da una medida relativa.

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/sensor-alcohol.png)


**Sensor de ultrasonidos** para medir la distancia a objetos, nos da una medida "analógica" de la distancia.

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/sensor-ultrasonidos.png)

**Sensor de suelo** para detectar la proximidad de objetos, sólo nos dice si hay objeto muy cerca o no. Nos da una medida digital. Es el que se usa para hacer los "sigue-líneas"

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/sensor-suelo.png)

**Sensor de presencia** detecta la presencia de personas. Es el que se usa en los baños de los bares o en las alarmas.

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/sensor-presencia.png)

**Sensor de sonido/micrófono** mide la cantidad de "ruido" que tenemos

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/sensor-microfono.png)


**Pulsador** para permitir la interacción con el usuario

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/pulsador.png)

### Actuadores



**Relé** permite controlar cargas eléctricas de potencia (2500W en el caso de este) electrónicamente

Funciona digitalmente

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/actuador-rele.png)


Los **servos** son motores con un movimiento angular, limitado a unos 180 grados. Incluyen toda la electrónica necesaria para controlar su movimiento..

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/actuador-servo.png)

Para controlarlos usaremos una extensión que nos proporciona bloques para establecer su posición.

Podemos usar distintos tipos de **LEDs**

* **LED** estándar

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/actuador-led.png)

* **LED de potencia** es el típico led que se incluye en pequeñas bombillas de casa (3W). Cuidado con mirarlo fíjamente que molesta

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/actuador-led-3w.png)

* **Semáforo** incluye 3 leds para facilitar el montaje

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/actuador-semaforo-3-leds.png)



Las **pantallas LCD** nos permiten mostrar datos de una manera muy sencilla. 

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/actuador-lcd-i2c-front.png)

Importante que tenga esta placa conectada que nos facilita enormemente la conexión

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/actuador-lcd-i2c-back.png)



## Conexión y alimentación de los componentes

El extensor dispone de dos zonas de conexión separadas denominadas V1 y V2, para las que podemos establecer alimentaciones diferentes. Para ello usamos unos "jumper" que podemos ver en la fotografía

Habitualmente los sensores utilizan un voltaje de 3 V y por ello solemos conectarlos en V1 donde además están las conexiones de las entradas analógicas de micro:bit P0, P1, P2, P3 y P4

En la zona V2 solemos conectar los actuadores que suelen funcionar a 5V

## Sistemas de riego

### Activación del sistema de riego con micro:bit

Vamos a crear un programa que nos permitirá encender y apagar nuestro sistema de riego. 

El encendido/apagado del sistema de riego lo haremos por medio de un relé.

Lo controlaremos utilizando los botones de micro:bit

Elegimos el pin de la micro:bit al que vamos a conectar nuestro relé descartando todo aquellos pines que tienen otra función como por ejemplo los analógicos o I2C o los que están conectados a la pantalla etiquetados como LED Col en [el esquema de pines de la micro:bit](https://tech.microbit.org/hardware/edgeconnector/)

Por ello elegimos el pin 16

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/microbit_rele_bomba_bb.png)

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/programa-riego-v0-manual.png)

[Programa control manual del riego](https://makecode.microbit.org/S69072-91267-85997-60346)

### Riego por tiempo

Vamos a añadir a nuestro programa de riego la opción de que se active automáticamente cada cierto tiempo.

Para facilitar la programación vamos a crear dos funciones que serán las que se encarguen de activar el riego y apagarlo. 

Una función no es otra cosa que un conjunto de instrucciones que empaquetamos y a las que les ponemos un nombre. Podremos llamar a una función, es decir ejecutarla, desde cualquier parte del código. De esta forma evitamos el tener que repetir código a lo largo de nuestro programa

Llamaremos a las funciones tanto desde la activación por tiempo como desde la pulsación de los botones

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/programa-riego-v1-tiempo.png)

[Programa Riego v1 por tiempo](https://makecode.microbit.org/S01728-54751-79238-45847)

### Medida de humedad

Vamos a conectar un sensor de humedad a P0 en función de su valor decidimos si encendemos o no el riego

Tenemos que determinar los puntos de humedad y de sequedad de nuestra zona de riego. Es lo que llamamos **calibrar** el sensor:

* Conectaremos el sensor de humedad al extensor utilizando P0 
* Introduciremos el sensor en la zona de riego, la maceta, el campo o lo que sea
* Iremos determinando los valores de humedad que consideramos como seco y como húmedo
* El valor de seco será el que active el riego y el de humedad el que lo detenga.

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/programa-riego-v1.5-sensor-humedad.png) 

[Programar riego v1.5 Sensor de humedad](https://makecode.microbit.org/S42158-10291-96717-30339)

### Control remoto

Ahora vamos a incluir la posibilidad de manejar remotamente el sistema de riego. Para ello crearemos un programa "Mando riego" que enviará la orden de encendido y apagado del riego utilizando la radio.

También adaptaremos el programa de riego para que cuando reciba las órdenes lo active y desactive.

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/programa-riego-v2-remoto.png)

[Programa riego 2.0 control remoto](https://makecode.microbit.org/S74997-04610-24960-98666)

Hemos añadido al programa de riego el envío de un mensaje de radio cuando se activa y cuando se desactiva el riego. De esta forma el mando puede saber el estado actual del sistema.

También puede actuar como una confirmación de que se ha recibido la orden y se ha ejecutado correctamente.

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/programa-mando-riego-v2.png)

[Programa mando riego](https://makecode.microbit.org/S20677-02264-98511-15862)

## Pantalla LCD

Para conectar la pantalla LCD al extensor, necesitamos conectar los pines SDA y SCL de la pantalla y los 19 y 20 de la microbit. Puedes ver en la parte de atrás del extensor los 4 pines etiquetados como SDA y SCL

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/lcd-conection.png)

Para programarla usaremos una extensión

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/Extensiones-lcd.png)

Por sencillez, te recomiendo la primera

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/programa-lcd.png)

[Programa LCD](https://makecode.microbit.org/S00545-23696-16195-13306)
