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
               <p style="color: #FFF; font-size: 24px;"><strong>|| Bienvenido <%= "${rolActual} ${session.actual.toString()}" %> </strong></p>
                <form name="LogOut" action="logout">
                <br/>
                <input type="submit" name="logOut" value="Log Out" />
                </form>
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
            <div id="kaltura_player_1390152090" style="width: 560px; height: 315px;" itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
                <span itemprop="name" content="Kaltura Logo Image"></span>
                <span itemprop="description" content="Kaltura logo"></span>
                <span itemprop="duration" content=""></span>
                <span itemprop="thumbnail" content=""></span>
                <span itemprop="width" content="560"></span>
                <span itemprop="height" content="315"></span>
                <a href="http://corp.kaltura.com/products/video-platform-features">Video Platform</a>
                <a href="http://corp.kaltura.com/Products/Features/Video-Management">Video Management</a> 
                <a href="http://corp.kaltura.com/Video-Solutions">Video Solutions</a>
                <a href="http://corp.kaltura.com/Products/Features/Video-Player">Video Player</a></div>
                <script src="http://cdnapi.kaltura.com/p/1676841/sp/167684100/embedIframeJs/uiconf_id/22189471/partner_id/1676841?autoembed=true&entry_id=1_5cmndt5e&playerId=kaltura_player_1390152090&cache_st=1390152090&width=560&height=315"></script>
            </p>
    </div>

</body>
</html>