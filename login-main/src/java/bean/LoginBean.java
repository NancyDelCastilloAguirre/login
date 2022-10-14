package bean;

public class LoginBean {
    private String pass,nombre, rolusuario;
    
    public String getRolusuario(){
        return rolusuario;
    }
    public void setRolusuario(String rolusuario){
        this.rolusuario=rolusuario;}
    
    public String getPass(){
        return pass;
    }
    
    public void setPass(String pass){
        this.pass=pass;
    }
    public String getNombre(){
        return nombre;
    }
    
    public void setNombre(String nombre){
        this.nombre=nombre;
    }
    
}
