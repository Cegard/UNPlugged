<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="layout" content="layout1"/>
        <title>Sample title</title>
    </head>
    <body>
        <div id="centro" >
            <h1><Strong>Videos</strong></h1>
            <p>
            <% videos.each{ %>
            <a href="../video/procesarSolicitud?v_id=${it.id}">${it.titulo}</a><br>
                <%}%>
            <p>
                
        </div>
    </body>
</html>
