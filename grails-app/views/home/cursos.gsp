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
            <h1><Strong>Cursos</strong></h1>
            <p>
            <% cursos.each{ %>
                <strong>${it.nombre}:</strong><br>
                <% def padre = it %>
                <% videos.each{ if(padre.id==it.claseEvento.id){ %>
                    -----<a href="/UNPlugged/video/procesarSolicitud?v_id=${it.id}">${it.titulo}</a><br>               
                <% } } %>
        
            </select>
            <% } %>
            <p>
                
        </div>
    </body>
</html>
