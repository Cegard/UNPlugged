!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>UNPlugged - home</title>
<meta name="layout" content="layout1"/>

</head>
<body>

    <div id="izquierda">
    <div aling="left">
        <% if(session.actual != null){ %>

                <p style="color: #FFF; font-size: 24px;"><strong>|| Bienvenido <%= "${rol} ${session.actual.toString()}" %> </strong></p>
                <form name="LogOut" action="logout">
                <br/>
                <input type="submit" name="logOut" value="Log Out" />
                </form>
        <% } else{ %>
                <p style="color: #FFF; font-size: 24px;"><strong>|| Inicio</strong></p>
                <form name="autentication" action="authenticate">
                Nombre <br> <input id="nombre" type="text" required="required" name="nombre"/> <br/>
                Contrase&ntildea <br> <input id="pass" type="password" required="required" name="password"/> <br/>
                <br/>
                <input type="submit" name="login" value="Entrar" />
                </form>
        <% } %>
    </div>
    
    <div aling="left">
               <p>&nbsp;</p>
               <p style="font-size: 24px; font-weight: bolder;">|| Explorar</p>
               <p><a href="#">Cursos</a></p>
               <p><a href="#">Videos</a></p>
               <p><a href="#">Canales</a></p>
    </div>
    </div>
        
    <div id="centro" align="center">
            <p>&nbsp;</p>
            <p>
                ¡Video Encontrado!
                <br>
                <p>
                Titulo del Video: <%= "${video.titulo}" %><br>
                Lugar: <%= "${video.lugar}" %><br>
                Ofrecido por: <%= "${video.ofrecidoPor}" %><br>
                <div id="kaltura_player_1390152090" style="width: 560px; height: 315px;" itemprop="video" itemscope itemtype="http://schema.org/VideoObject" align="center">
                <script src="${video.path}" ></script>
    
            </p>
    </div>

</body>
</html>