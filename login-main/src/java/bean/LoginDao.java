package bean;
import java.sql.*;

public class LoginDao {
    
    public static boolean validate(LoginBean bean)
    {
        boolean status=false;
        try
        {
        Connection con=ConnectionProvider.getCon();
        PreparedStatement ps=con.prepareStatement("SELECT * FROM usuario where usu_nomusuario=? usu_password=? and rol_usuario=?;");
        ps.setString(1, bean.getNombre());
        ps.setString(3,bean.getRolusuario());
        ps.setString(2, bean.getPass());
        
        ResultSet rs=ps.executeQuery();
        status=rs.next();
        
        }
        catch(SQLException e){
        }
        return status;
    }

    
}
