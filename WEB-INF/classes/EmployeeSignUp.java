import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;


public class EmployeeSignUp extends HttpServlet{
    public void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException{
        MongoConnect c = new MongoConnect();
        String email = req.getParameter("regEm");
        String fname = req.getParameter("fname");
        String lname = req.getParameter("lname");
        String passwd = req.getParameter("regpasswd");
        MongoConnect.InsertEmployee(email, fname, lname, passwd);
        req.setAttribute("error", "Sign Up successful");
        req.getRequestDispatcher("index.jsp").forward(req, response);
    }
}
