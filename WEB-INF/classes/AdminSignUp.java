import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;


public class AdminSignUp extends HttpServlet{
    public void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException{
        MongoConnect c = new MongoConnect();
        String email = req.getParameter("AdminEmail");
        String fname = req.getParameter("Adminfname");
        String lname = req.getParameter("Adminlname");
        String dept = req.getParameter("Admindept");
        String title = req.getParameter("Admintilte");
        String passwd = req.getParameter("AdminPass");
        MongoConnect.InsertAdminToMaster(email, fname, lname, dept, title, passwd);
        req.setAttribute("AdminErrorMsg", "Sign Up successful");
        req.getRequestDispatcher("AdminIndex.jsp").forward(req, response);
    }
}
