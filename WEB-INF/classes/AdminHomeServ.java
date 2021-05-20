import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

public class AdminHomeServ extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
        MongoConnect c= new MongoConnect();
        String email = (String)req.getSession().getAttribute("email");
        if(email == null){
            req.setAttribute("error", "Session expired please login again");
            req.getRequestDispatcher("AdminIndex.jsp").forward(req, response);    
        }
        req.setAttribute("email", email);
        String data = MongoConnect.getAdminPendingLeaves(email);
        req.setAttribute("PendingLeaves", data);
        req.getRequestDispatcher("AdminDashboard.jsp").forward(req, response);
    }
}