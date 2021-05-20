import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import com.mongodb.client.*;
import org.bson.*;
import com.mongodb.client.model.Filters;

public class AuthServ extends HttpServlet {

    public void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
        MongoConnect c = new MongoConnect();
        String email = req.getParameter("email").trim();
        String password = req.getParameter("password").trim();
        PrintWriter out = response.getWriter();
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        if (!MongoConnect.Authenticate(email, password)) {
            req.setAttribute("error", "Invalid username or password");
            req.getRequestDispatcher("index.jsp").forward(req, response);
        } else {
            Cookie ck = new Cookie("user", email);
            ck.setMaxAge(60*60);
            HttpSession ses = req.getSession();
            ses.setAttribute("email", email);
            ses.setMaxInactiveInterval(30*60);
            response.addCookie(ck);
            response.sendRedirect("Home");
        }
        out.flush();
    }

}