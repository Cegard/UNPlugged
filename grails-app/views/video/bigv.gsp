<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="layout" content="main"/> 
<title>BigVEncoder Guía de uso</title>
</head>
<body>
<h1>BigVEncoder</h1>
<br><br>
<h2>Introducción</h2>
<br><br>
BigVEncoder es bastante versatil y su función primaria en este portal sera orientada hacia la emisión de video y audio 
en vivo a traves de internet.
<br><br>
<p/>
Daremos un vistazo a las partes fundamentales de BigVEncoder para su correcto funcionamiento en UNPlugged.
<p/>
<br><br>
<div align="center">
<img src="${resource(dir: 'images', file: 'setup1.png')}"></img>
</div>
<br><br>
<p/>
La imagen mostrada arriba ilustra la ventana de BigVEncoder al ser ejecutado por primera vez. Esta es la página de configuración 
para ajustar los parametros a la hora de desempeñar una tarea en particular.
<br><br>
<h2>Media Source</h2>
<br><br>
En esta página,
puede configurar la fuente de medios, la cual es de donde provendrá la entrada de trasmisión. Esta puede ser un archivo,
retransmisión desde internet o la alimentación via microfono/camara web. Usted instalará esto en el campo
&quot;Media source&quot;. Tendrá botones que identificarán la fuente, deberá seleccionar los dispositivos para captura de audio
y video con los que cuente en su dispositivo, o en su defecto indicar la URL que hospeda el archivo multimedia que desea transmitir.
<br><br>
<h2>Media destination</h2>
<br><br>
En el campo de Media destination, tendrá que colocar los datos del server de UNPlugged junto con la clave administrada para su transmisión personal 
del curso o evento al cual esta a cargo. Debe tener la siguiente sintaxis:
<br>
rtmp://unpplugged.unal.edu.co/live/live_%Código Asignatura%%Semestre Actual%_%Clave Personal%
<p>
<br><br>
Por ejemplo:
<br>
rtmp://unplugged.unal.edu.co/live/live_20167022_CcXYuy23
<p/>
<br><br>
<h2>Video output settings</h2>
<br>
En este campo se recomienda tener un &quot; video format &quot; h264/flv, manteniendo los demás campos por defecto. 
<br><br>
<h2>Audio output settings</h2>
<br>
En este campo se recomienda tener un &quot; audio format &quot; aac, manteniendo los demás campos por defecto. 
<br><br>

<h2>General settings</h2>
<br><br>
Configurar el número de núcleos con los que cuenta su CPU para un mejor rendimiento (1 por defecto).

<br><br>

<h2>Monitor page</h2>

<br><br>
<p/>

<div align="center">
<img src="${resource(dir: 'images', file: 'monitor1.png')}"></img>
</div>
<br><br>
<p/>

Esta página es bastante simple, en el campo &quot; output format &quot; debe estar en flv,
Para iniciar la transmisión solo hay que dar click en el botón &quot; Start Encoder &quot; , si todo esta bien
el enlace sera establecido y la transmisión comenzará.

El resto de botones nos permitiran probar la entrada y salida, asi como al calidad de la misma.
<br><br>
<h2>Advanced page</h2>
<br><br>
<p/>
<div align="center">
<img src="${resource(dir: 'images', file: 'advanced1.png')}"></img>
</div>
<p/>
<br><br>
En la página de opciones avanzadas encontraremos más parametros para ajustar.
<p/><br>
Click en &quot;Video Capture Settings&quot; y será capaz de elegir el dispositivo de video que alimentará su transmisión.
Adicionalmente peude alterar el formato y las dimensiones que manejará.
<p/><br>
Click en &quot;Audio Capture Settings&quot; para seleccionar el dispositivo de recepción de audio disponible.
<p/><br><br>
Para el correcto funcionamiento en UNPlugged, click en &quot;x264 Options&quot; y
seleccionar high422 en el campo &quot;profile&quot;.
<p/>
<br><br>
Siguiendo esta guía, la difusión de multimedia será satisfactoriamente realizada a su canal de UNPlugged.

</body>
</html>