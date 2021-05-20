import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import com.mongodb.client.*;
import org.bson.*;
import com.mongodb.client.model.Filters;

public class HomeServ extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
        MongoConnect c= new MongoConnect();
        String email = req.getSession().getAttribute("email").toString().trim();
        Document doc = MongoConnect.getUser(email);
        String found = MongoConnect.getRequest(email);
        req.setAttribute("arr", found);
        req.getRequestDispatcher("home.jsp").forward(req, response);
    }
}