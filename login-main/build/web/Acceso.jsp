<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Acceso</title>

    <link href="css/materialize.min.css" rel="stylesheet">
    <link href="css/materialize.css" rel="stylesheet">

    <link href="css/style.css" rel="stylesheet" type="text/css">


</head>

<body >

    <div class="content-section-a">

        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-sm-6">
                    
                    <hr class="section-heading-spacer">
                    
                    <div class="clearfix"></div>
                    
                    <h2 class="header center teal-text text-lighten-2">Ingreso de Usuarios</h2>
                    <h3 >Ingrese los siguientes datos</h3>
                    
                    <form action="loginprocess.jsp">
                        Nombre:      <input type="text" name="nombre"/><br/><br/>
                        Email:      <input type="text" name="email"/><br/><br/>
                        Password:   <input type="password" name="pass"/><br/><br/>
                        <input type="submit" value="Ingresar"/>
                        
                    </form>
                
                            
                    <hr class="section-heading-spacer">
                    
                
                </div>
                
                <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                    <img class="img-responsive" src="im/fonod.png" alt="">
                </div>
                
            </div>

        </div>
        

    </div>
    


</body>

</html>
