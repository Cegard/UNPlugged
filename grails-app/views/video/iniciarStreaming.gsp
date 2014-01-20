<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="layout" content="main"/> 
<meta name="layout" content="layout1"/> 
<title>Streaming</title>
</head>
<body>

	<h1>Streaming</h1>
	<br> <br>
	<form name="autentication" controller="VideoController">
        Titulo: <input type="text" name="titulo"/> <br>
        <%-- Fecha: <g:datePicker name="fecha" default="${new Date()}" precision="day" /> <br/> --%>
        <div id="stream_software">
         <br> <br> <br>
    <h2>Software para realizar transmisión</h2>
    <br> <br>
    <p>
    "Las aplicaciones listadas en esta página son las herramientas más comunes a la hora de realizar transmisión multimedia en vivo y en directo"
    </p>
    <br> <br>
    <p>
    <strong>
    "En caso de extraviar la clave de transmisión, solicitarla nuevamente en:" 
    </strong>
    </p>
    <br><br> <br> <br>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <div class="item-container">
      <div class="item">
        <img src="${resource(dir: 'images', file: 'BigVEncoderLiveStreaming_icon.jpg')}" width="80" height="80" alt=""/>
        <br><br>
        <div class="buttons">
          <a href="http://bigvstudio.com/download/bve/index.php" class="primary_button js-track-click" ><span>Descargar</span></a>
          <a href="bigv.gsp" class="normal_button js-track-click-guide"><span>Guía</span></a>
        </div>
      </div>
      <br><br>
      <div class="item-info">
        <h4>BigVEncoder</h4>
        <a href="http://bigvstudio.com">http://bigvstudio.com/</a>
        <p>Optimizado para usuarios de Linux, herramienta para encodeado de video y audio.</p>
      </div>
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="item-container">
      <div class="item">
        <img src="${resource(dir: 'images', file: 'FMLE_small_logo.png')}" width="80" height="80" alt=""/>
        <br><br>
        <div class="buttons">
          <a href="http://www.adobe.com/es/products/flash-media-encoder.html" class="primary_button js-track-click" data-app="wirecast"><span>Descargar</span></a>
          <a href="fme.gsp" class="normal_button" disabled="disabled"><span>Guía</span></a>
        </div>
      </div>
      <br><br>
      <div class="item-info">
        <h4>Flash Media Live Encoder</h4>
        <a href="http://www.adobe.com/es/products/flash-media-encoder.html">http://www.adobe.com</a>
        <p>Codificador multimedia que transmite audio y vídeo en tiempo real.</p>
      </div>
    </div>
  </div>
	</form>
	
</body>
</html>