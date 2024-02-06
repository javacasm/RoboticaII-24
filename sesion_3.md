## Sesión 3

### Dado en grupo

micro:bit tiene radio en la banda de 2.4GHz y es compatible con Bluetooth.

Vamos a usar un formato de radio sin protocolo, sólo datos en bruto. Por tanto no existe seguridad y cualquier micro:bit puede escuchar los datos., sin más que unirse al grupo adecuado.

Podemos enviar números, texto y datos con metadatos (pares etiqueta-valor)

Vamos a hacer un dado capaz de enviar por radio el resultado, todas las micro:bit del grupo recibirán la tirada

Todas las micro:bit tienen el mismo programa y emiten y reciben datos por radio, las agruparemos por Grupo de Radio

[Programa: Dado en grupo](https://makecode.microbit.org/S71311-82136-31460-48895)

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/programa-dado-radio-grupo.png)

Para distinguir cuando el número que se muestra es generado por nuestra micro:bit o se recibe por radio, en este último caso invertimos el led (0,0) al recibirlo

### Controlando maqueen por radio

Vamos a controlar los movimientos de maqueen desde otro micro:bit usando la radio.

Tendremos un programa para el mando y otro para el robot

El mando envía órdenes de movimiento a maqueen usando caracteres

[Programa: mando](https://makecode.microbit.org/S27016-73784-00051-43236)

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/programa-mando-maqueen-radio.png)

El robot interpreta las órdenes del mando y además envía cada 10 segundos la temperatura como número

[Programa: robot](https://makecode.microbit.org/S90780-51307-28615-38611)

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/programa-robot-maqueen-radio.png)

### Encendiendo Leds

Vamos a conectar un led al extensor de micro:bit y encenderlo y apagarlo

[Programa encender/apagar leds](https://makecode.microbit.org/S86602-73088-31538-43784)

![](https://raw.githubusercontent.com/javacasm/RoboticaII-24/main/images/programa-encender-led.png)
