import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import com.mongodb.client.*;
import org.bson.*;
import com.mongodb.client.model.Filters;

public class AdminAuthServ extends HttpServlet {
    // private MongoClient client;
    // private MongoDatabase db;
    // private MongoCollection<Document> collection;

    public void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
        // client = MongoClients.create(
        //         "mongodb+srv://LMS:KMORIa3UZlTcon62@onlib.i34wm.mongodb.net/myFirstDatabase?retryWrites=true&w=majority");
        // db = client.getDatabase("LMS");
        // collection = db.getCollection("Admin");
        MongoConnect c = new MongoConnect();
        String email = req.getParameter("email").trim();
        String password = req.getParameter("password").trim();
        PrintWriter out = response.getWriter();
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        if (!MongoConnect.AdminAuthenticate(email, password)) {
            out.print("{Auth: \"NOTOK\", Error:\"Invalid username or password!\" }");
        } else {
            HttpSession ses = req.getSession();
            ses.setAttribute("email", email);
            ses.setMaxInactiveInterval(30*60); //30 min
            response.sendRedirect("AdminHome");
        }
        /*Document doc = collection.find(Filters.eq("Email", email)).first();
        if (doc == null) {
            out.print("{Auth: \"NOTOK\", Error:\"User Does not exist\" }");
        } else if (password.equals(doc.get("Password"))) {
            String data = "[";
            MongoCollection<Document> col = db.getCollection("Employee");
            int num = 0;
            for(Document curr: col.find(Filters.eq("Department", doc.get("Department")))){
                num++;
                data += curr.toJson() + ",";
            }
            data += "]";
            out.print(data);
            req.setAttribute("arrAdmin", data);
            req.setAttribute("numAdmin", num);
            req.getRequestDispatcher("Members.jsp").forward(req, response);

        } else {
            out.print("{Auth: NOTOK, Error:\"Wrong Password\"}");
        }*/
        out.flush();
    }


}