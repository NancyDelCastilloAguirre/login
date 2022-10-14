
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>CECyT9 </title>    
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        
        
        <link href="https://fonts.googleapis.com/css?family=Nunito&display=swap" rel="stylesheet"> 
        
        <!-- Link hacia el archivo de estilos css -->
        <link rel="stylesheet" href="css/login.css">
        
        <style type="text/css">
            
        </style>
        
        <script type="text/javascript">
        
        </script>
        
    </head>
    
    <body>
    
        <div id="contenedor">
            
            <div id="contenedorcentrado">
                <div id="login">
                    <form id="loginform" action="loginprocess.jsp">
                        <label for="usuario">Usuario</label>
                        <input id="usuario" type="text" name="nombre" placeholder="Usuario" required>
                        
                        <label for="password">Contraseña</label>
                        <input id="password" type="password" placeholder="Contraseña" name="pass" required>
                        
                        <label>id</label>
                            <input name="rolusuario">
                        
                        <button type="submit" title="Ingresar" name="Ingresar">Login</button>
                    </form>
                    
                </div>
                <div id="derecho">
                    <div class="titulo">
                        Sistema de Administraciòn
                    </div>
                    <hr>
                    <div class="pie-form">
                        Cecyt 9
                        <a href="#">Centro de Estudios Cientificos y Tecnologicos</a>
                        <hr>
                        <a href="#">« necesitan tener una cuenta para inciar</a>
                    </div>
                </div>
            </div>
        </div>
  </body>
</html>

