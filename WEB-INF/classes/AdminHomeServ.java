import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import com.mongodb.client.*;
import org.bson.*;
import com.mongodb.client.model.Filters;

public class AdminHomeServ extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
        MongoConnect c= new MongoConnect();
        String email = req.getSession().getAttribute("email").toString().trim();
        if(email == null){
            req.setAttribute("error", "Session expired please login again");
            req.getRequestDispatcher("AdminIndex.jsp").forward(req, response);    
        }
        req.setAttribute("email", email);
        req.getRequestDispatcher("AdminDashboard.jsp").forward(req, response);
    }
}