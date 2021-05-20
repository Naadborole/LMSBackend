import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import com.mongodb.client.*;
import org.bson.*;
import com.mongodb.client.model.Filters;

public class AdminMemListServ extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
        MongoConnect c= new MongoConnect();
        String email = req.getParameter("email").toString().trim();
        if(email == null){
            req.setAttribute("error", "Session expired please login again");
            req.getRequestDispatcher("AdminIndex.jsp").forward(req, response);    
        }
        Document doc = MongoConnect.getAdminUser(email);
        String data = MongoConnect.getMembersUnderAdmin(email);
        req.setAttribute("arrAdmin", data);
        req.getRequestDispatcher("Members.jsp").forward(req, response);
    }
}