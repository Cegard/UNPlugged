<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="layout" content="main"/> 
<meta name="layout" content="layout1"/> 
<title>Flash Media Live Encoder Guía de uso</title>
</head>
<body>
<div id="screensteps-main-content">
<div id="screensteps-document">
<div id="screensteps-description">

<h1 class="lesson">Configuración de Flash Media Live Encoder. </h1>
<div class="description">
<br><br>
<p>Es necesario que sigas las recomendaciones y los valores que te damos en esta guía para poder transmitir sin problemas en una conexión mínima recomendada de 256 Kbps de velocidad de envío (Upload). Realiza una prueba de velocidad antes de colocar los siguientes parámetros. <a href="http://www.speakeasy.net/speedtest/" target="_blank">Da clic aquí</a> para conocer la velocidad de tu conexión. </p>
</div>

</div>
<br><br>
<div id="screensteps-steps">
<div class="step">
<h2 id="InterfazDeFlashMediaLiveEncoder.">Interfaz de Flash Media Live Encoder.</h2>
<div>
<br><br>
<div class="image clearfix">
<a href="#" rel="prettyPhoto"><img alt="" height="441" src="${resource(dir: 'images', file: 'media_1342110388104_display.png')}" width="640"></a>
</div>
<br><br>
<div class="instructions"><p>Al abrir el programa se mostrará una ventana similar a esta imagen, en la cual se muestran 3 zonas principales:</p>
<ol>
<li>Previsualización de Audio/Video.</li>
<li>Parámetros de Configuración de Audio / Video.</li>
<li>Parámetros de Configuración del Servidor de Streaming.</li>
</ol></div>
<div class="clear"></div>
<br><br>
</div>
</div>
<div class="step">
<h2 id="ConfiguraciónDeVideo."> Configuración de Video.</h2>
<div>
<br><br>
<div class="image clearfix">
<a href="#" rel="prettyPhoto"><img alt="" height="378" src="${resource(dir: 'images', file: 'media_1342129464795_display.png')}" width="308"></a>
</div>
<br><br>
<div class="instructions"><ol>
<li><strong>Preset</strong>: Selecciona Custom.</li>
<li><strong>Video</strong>: Marca la casilla de Video.</li>
<li><strong>Device</strong>: Selecciona la cámara desde donde se grabará la transmisión. </li>
<li><strong>Format</strong>: Selecciona H.264</li>
<li><strong>Frame Rate</strong>: Selecciona 25.00 fps</li>
<li><strong>Input Size</strong>: Selecciona 320x240</li>
<li><strong>Bit Rate</strong>: Selecciona 200 kbps y320 x 240 en Output Size. </li>
</ol></div>
<div class="clear"></div>
<br><br>
</div>
</div>
<div class="step">
<h2 id="ConfiguraciónDeAudio.">Configuración de Audio.</h2>
<div><br><br>
<div class="image clearfix">
<a href="#" rel="prettyPhoto"><img alt="" height="223" src="${resource(dir: 'images', file: 'media_1342129746238_display.png')}" width="298"></a>
</div>
<br><br>
<div class="instructions"><ol>
<li><strong>Audio</strong>: Marca la casilla de Audio. </li>
<li>Device: Selecciona el hardware de audio que utilizarás en la transmisión. </li>
<li>Format: Selecciona Mp3.</li>
<li>Channels: Selecciona Mono.</li>
<li>Sample Rate: Selecciona 22050.</li>
<li>Bit Rate: Selecciona 32 kbps.</li>
<li>Volume: 80% - 85 %</li>
</ol>
<br>
<p><strong>Nota:</strong> Si también vas a transmitir a dispositivos móviles, deberás cambiar el codec del audio por AAC.</p></div>
<div class="clear"></div>
<br>
</div>
</div>
<div class="step">
<h2 id="ConfiguraciónOutput._">Configuración Output. </h2>
<div><br><br>
<div class="image clearfix">
<a href="#" rel="prettyPhoto"><img alt="" height="322" src="${resource(dir: 'images', file: 'media_1342112630330_display.png')}" width="342"></a>
</div>
<br><br>
<div class="instructions"><ol>
<li>Marca la casilla: Stream to Flash Media Server. </li>
<li>FMS URL escribe: rtmp://unplugged.unal.edu.co/live</li>
<li>Backup URL: Este campo debe quedar en blanco. Favor de no escribir nada. </li>
<li>Stream: Ingresa la clave proporcionada en el formato live_%Código Asignatura%%%Grupo Asignatura%%Semestre Actual%_%Clave Streaming%. </li>
<li>Marca la opción Save to file: sample.f4v en caso de querer guardar una copia local del video.</li>
<li>Da clic en el botón Connect que se encuentra abajo del campo Stream. </li>
</ol>

</div>
<div class="clear"></div>

</div>
</div>
<div class="step">
<br>
<div>

<div class="instructions"><p>Una vez que te hayas conectado al servidor, sólo da clic en el botónque Start qu se encuentra en la parte inferior. Para detener la transmisión y corregir parámetros da clic en STOP; no es necesario desconectarse del servidor, simplemente deja de transmitir.</p>

</div>
<div class="clear"></div>

</div>
</div>
<div class="step">

<div>

<div class="instructions"><p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</div>
<div class="clear"></div>

</div>
</div>



</div>
</div>
</div>
</body>
</html>