<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->
<html>
    <head>
        <style type="text/css">
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
        </style>
        <title><g:layoutTitle default="An example decorator" /></title>
        <g:layoutHead />
    </head>
    <body onload="${pageProperty(name:'body.onload')}">
        <p>
            <img src="${resource(dir: 'images', file: 'logo.png')}" width="497" height="100" alt="Grails"/>
            <div align="right">
                <form action="buscar">
                    <input name="search" type="search" autocomplete="on" value="buscar">
                </form>
                
            </div>
            <hr>
    </p>
        <div class="menu"> 
        </menu>
            <div class="body">
                <g:layoutBody />
            </div>
        </div>
    </body>
</html>
