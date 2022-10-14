<%@page import="bean.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page import="bean.LoginBean"%>
<%@page import="bean.LoginDao"%>

<jsp:useBean id="obj" class="bean.LoginBean"/>

<jsp:setProperty property="*" name="obj"/>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Login Accesso</title>
    <link href="css/materialize.min.css" rel="stylesheet">

    <link href="css/landing-page.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        
        <div class="content-section-a">

        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-sm-6">
                    
                    <hr class="section-heading-spacer">
                    
                    <div class="clearfix"></div>
                    
                    
<%
boolean status=LoginDao.validate(obj);
String  qry="SELECT * FROM usuario where usu_nomusuario=?  and usu_password=? and rol_usuario=?;";
Connection con=ConnectionProvider.getCon();
            PreparedStatement ps;
            ResultSet rs;
            String usuario=(String)request.getParameter("nombre");
            String rolusuario=(String)request.getParameter("rolusuario");
            String password=(String)request.getParameter("pass");
            ps=con.prepareStatement("SELECT * FROM usuario where usu_nomusuario=?  and usu_password=? and rol_usuario=?;");
            ps.setString(1, usuario);
            ps.setString(2, password);
            ps.setString(3, rolusuario);
            rs=ps.executeQuery();
            


if(rs.next()){
    session.setAttribute("session","TRUE");
    out.println("Felicidades, has ingresado correctamente\n" );
    response.sendRedirect("principal.jsp");
%>
<br><br><a href="principal.jsp">Ingresar</a>
<%
}
else
{
 HttpSession sesion=request.getSession();
    


out.print("Usuario: " + usuario +"Sesion: " + sesion);
out.print("Pass: " + password);
out.print("Lo sentimos, correo y/o contraseña incorrecta, favor de revisar");
}
rs.close();

%>
                <br><br><a href="index.jsp">Regresar al inicio</a>
                            
                    <hr class="section-heading-spacer">
                    
                
                </div>
                
                <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                    <img class="img-responsive" src="img/registro.jpg" alt="">
                </div>
                
            </div>

        </div>
        

    </div>
        
    </body>
</html>