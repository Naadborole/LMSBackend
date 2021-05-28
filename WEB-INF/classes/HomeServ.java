import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import org.bson.*;

public class HomeServ extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
        MongoConnect c= new MongoConnect();
        String email = (String)req.getSession().getAttribute("email");
        if(email == null){
            
            req.setAttribute("error", "Session expired please login again");
            req.getRequestDispatcher("index.jsp").forward(req, response);    
        }
        Document doc = MongoConnect.getUser(email);
        String found = MongoConnect.getRequest(email);
        req.setAttribute("arr", found);
        req.getRequestDispatcher("home.jsp").forward(req, response);
    }
}