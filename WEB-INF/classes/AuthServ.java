import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import com.mongodb.client.*;
import org.bson.*;
import com.mongodb.client.model.Filters;

public class AuthServ extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
        MongoConnect c = new MongoConnect();
        String email = req.getParameter("email").trim();
        String password = req.getParameter("password").trim();
        PrintWriter out = response.getWriter();
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        if (!MongoConnect.Authenticate(email, password)) {
            out.print("{Auth: \"NOTOK\", Error:\"Invalid username or password!\" }");
        } else {
            String found = MongoConnect.getRequest(email);
            out.print(found);
            req.setAttribute("arr", found);
<<<<<<< HEAD
=======
            req.setAttribute("num", num);
>>>>>>> 1813b64b49ae9b666dd1534444c0e59cdb04f4d6
            req.getRequestDispatcher("home.jsp").forward(req, response);
        }
        out.flush();
    }

}