import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;


public class EmployeeDashboard extends HttpServlet{
    public void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException{
        Cookie ck[] = req.getCookies();
        String email = null;
        for(int i=0; i<ck.length; i++){
            if(ck[i].getName().equals("email")){
                email = ck[i].getValue();
            }
        }
        if(email == null){
            req.setAttribute("error", "Session expired please login again");
            req.getRequestDispatcher("index.jsp").forward(req, response);    
        }
        else{
            
        }
    }
}
