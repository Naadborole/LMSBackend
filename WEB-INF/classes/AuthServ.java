import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import com.mongodb.client.*;
import org.bson.*;
import com.mongodb.client.model.Filters;

public class AuthServ extends HttpServlet {
    private MongoClient client;
    private MongoDatabase db;
    private MongoCollection<Document> collection;

    public void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
        client = MongoClients.create(
                "mongodb+srv://LMS:KMORIa3UZlTcon62@onlib.i34wm.mongodb.net/myFirstDatabase?retryWrites=true&w=majority");
        db = client.getDatabase("LMS");
        collection = db.getCollection("Employee");
        
        String email = req.getParameter("email").trim();
        String password = req.getParameter("password").trim();
        PrintWriter out = response.getWriter();
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        Document doc = collection.find(Filters.eq("Email", email)).first();
        if (doc == null) {
            out.print("{Auth: \"NOTOK\", Error:\"User Does not exist\" }");
        } else if (password.equals(doc.get("Password"))) {
            String found = "[";
            MongoCollection<Document> col = db.getCollection("Requests");
            int num = 0;
            for(Document curr: col.find(Filters.eq("From", email))){
                num++;
                found += curr.toJson() + ",";
            }
            found += "]";
            out.print(found);
            req.setAttribute("arr", found);
            req.setAttribute("num": num);
            req.getRequestDispatcher("home.jsp").forward(req, response);

        } else {
            out.print("{Auth: NOTOK, Error:\"Wrong Password\"}");
        }
        out.flush();
    }


}