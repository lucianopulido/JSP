package controlador;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import modelo.Rectangulo;

@WebServlet("/ServletControlador")
public class ServletControlador extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException{
        //1. Procesamos parametros
        String accion = request.getParameter("accion");
        //2. Creamos los JavaBeans
        Rectangulo recRequest = new Rectangulo(1,2);
        Rectangulo recSesion = new Rectangulo(3,4);
        Rectangulo recAplicacion = new Rectangulo(5,6);
        
        //3. Agregamos el javabean a algun alcance
       
        //revisamos la accion proporcionada
        if(accion.equals("agregarVariables")){
            //alcance request
            request.setAttribute("rectanguloRequest", recRequest);
            
            //alcance session
            
            HttpSession session = request.getSession();
            session.setAttribute("rectanguloSession", recSesion);
            
            //alcance aplication
            
            ServletContext application = this.getServletContext();
            application.setAttribute("rectanguloAplicacion", recAplicacion);
            
            request.setAttribute("mensaje", "Las variables fueron agregadas");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
          //4.redireccionar a la vista seleccionada
        else if(accion.equals("listarVariables")){
            request.getRequestDispatcher("WEB-INF/alcanceVariables.jsp").forward(request,response);
        }
        else{
            // redireccionamos al inicio
            request.setAttribute("mensaje", "Accion no proporcionada o desconocida");
            request.getRequestDispatcher("index.jsp").forward(request, response);
            
        }
             
    }
}
