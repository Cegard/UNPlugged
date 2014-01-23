<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->
<html>
    <head>
        <!--<style type="text/css">
            body {
                background-color: #171C18;
            }
            body,td,th {
                font-size: 18px;
                color: #FFF;
            }
            a:link {
                color: #666;
            }
            #izquierda{
            float: left;
            width: 20%;
            }
      
            #centro{
            margin: 0 auto;
            width: 80%;      
            }
        </style>-->
<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
        <title><g:layoutTitle default="An example decorator" /></title>
        <g:layoutHead />
    </head>
    <body onload="${pageProperty(name:'body.onload')}">
        <p>
            <img src="${resource(dir: 'images', file: 'logo.png')}" width="497" height="100" alt="Grails"/>
            <div align="right">
                    
                <form action="buscar">
                    <select name="Opcion">
                        <option selected value="0"> Elija un filtro de búsqueda </option>
                        <option value="1">Por título</option>
                        <option value="3">Por autor</option>
                        <option value="4">Por lugar</option>
                        
                    </select>
                    <input name="search" type="search" autocomplete="on" placeholder="Buscar">
                </form>
                
            </div>
            <hr>
    </p>
        <div class="menu"> 
        </menu>
            <div class="body">
                <div id="izquierda">
                   <div aling="left">
                        <% if(session.actual != null){ %>
                            <p style="background-image:url(../images/table.jpg);background-repeat:no-repeat;color:#FFF;font-size:14px;"><strong>|| Bienvenido <%= " ${session.actual.toString()}" %> </strong></p>
                            <form name="LogOut" action="logout">
                            <br/>
                            <input class="normal_button"type="submit" name="logOut" value="Log Out" />
                            </form>
                        <% } else{ %>
                            <p style="background-image:url(../images/table.jpg);background-repeat:no-repeat;color:#FFF;font-size:14px;"><strong>|| Inicio</strong></p>
                            <form name="autentication" action="authenticate">
                            <br> <input id="nombre" type="text" required="required" name="nombre" placeholder="Usuario"/> <br/>
                            <br> <input id="pass" type="password" required="required" name="password" placeholder="Contraseña"/> <br/>
                            <br/>
                            <input class="primary_button" type="submit" name="login" value="Entrar" />
                            </form>
                        <% } %>
                    </div>
                    <br><br>
                    <div aling="left">
                        <p>&nbsp;</p>
                        <p style="background-image:url(../images/table.jpg);background-repeat:no-repeat;color:#FFF;font-size:14px; font-weight: bolder;">|| Explorar</p>
                        <p><a href="home">Inicio</a></p>
                        <p><a href="cursos">Cursos</a></p>
                        <p><a href="Videos">Videos</a></p>
                    </div>
                </div>
                <g:layoutBody />
            </div>
        </div>
    </body>
</html>
