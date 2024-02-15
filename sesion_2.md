## Sesión 2

Ahora vamos a ampliar nuestro programa termostato para que controle 2 dispositivos, el que simulamos con el led de P8 y el de P12

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/maqueen_pinout.jpeg)

[Termostato v2](https://makecode.microbit.org/S74750-50460-36032-19964)

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/programa_termostato_v2.png)

Cuando usamos nuestro programa termostato veremos en el simulador que se activan y desactivan los pines P8 y P12

[Pines de micro:bit ](https://tech.microbit.org/hardware/edgeconnector/)


![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/edge-connector-2.png)


Vemos que hay pines que permiten trabajar de diferente forma. Podemos leer el voltaje de los que están marcados como "analog in"

### Banana Keyboard

Vamos a leer el valor de los pines P0, P1 y P2 para reproducir distintos sonidos.

Podemos activarlos al tocarlos con la mano o con un cable al mismo tiempo que GND

Seguimos el[ tutorial Banana Keyboard](https://makecode.microbit.org/projects/banana-keyboard)

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/banana-keyboard-0.png)

[Programa: banana piano](https://makecode.microbit.org/S70255-09945-91906-61767)

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/programa-banana-piano.png)

### Avanzar y retroceder

Vamos a comenzar a controlar el robot maqueen, para ello tenemos que cargar la extensión "Maqueen" lo que nos dará acceso a los bloques para controlar el robot. Si tenemos otro tipo de robot tendremos que cargar la correspondiente extensión, con la cutebot o [la de Dg-Cat](https://github.com/lzty634158/yahboom_mbit_en) (en este caso en lugar de buscar la extensión añadimos esta url al abrir las extensiones)

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/programa_avanzar-retroceder.png)

[Programa: Avanzar y retroceder](https://makecode.microbit.org/S83224-54451-42446-96375)

### Recorriendo un cuadrado

Vamos a hacer que maqueen recorra un cuadrado, para ello repetiremos 4 veces las operaciones de avanzar y girar.

Podemos hacer 2 tipos de giro:

* Una rueda parada y moviendo la otra. El giro se hace en torno a la rueda parada.
* Moviendo cada rueda en una dirección. El giro se hace alrededor del centro del robot

Maqueen no sabe medir ni la distancia, ni la cantidad de giro, por lo que lo haremos calibrando el tiempo necesario en hacer cada movimiento y la velocidad a la que lo hacemos. Este tiempo varía según el agarre del suelo, la carga de las baterías...

[Programa: Recorriendo un cuadrado](https://makecode.microbit.org/S67438-69630-10098-02252)

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/programa-cuadrado.png)

Ideas: 

* Esto son maniobras que tendremos que programar y comprobar
* Resolver un laberinto, aparcar,... 
* Podemos crear nuestros circuitos con las cajas de los robots

### Sensor de distancia (ultrasonidos)

Vamos a medir la distancia a un obstáculo y según sea encenderemos 1 o 2 leds. 

* Si está a más de 20cm todo apagado
* 1 led entre 10cm y 20cm
* Menos de 10cm los 2 leds encendidos

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/programa-midiendo-distancias.png)

[Programa: midiendo distancias](https://makecode.microbit.org/S28243-44852-33394-89513)