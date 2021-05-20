import java.io.*;
import com.mongodb.client.*;
import org.bson.*;
import com.mongodb.client.model.Filters;


public class MongoConnect {
    private static MongoClient client;
    private static MongoDatabase db;
    private static MongoCollection<Document> collection;

    MongoConnect(){
        client = MongoClients.create(
                "mongodb+srv://LMS:KMORIa3UZlTcon62@onlib.i34wm.mongodb.net/myFirstDatabase?retryWrites=true&w=majority");
        db = client.getDatabase("LMS");
        collection = db.getCollection("Employee");
    }

    public static Boolean Authenticate(String user, String pass){
        Document doc = collection.find(Filters.eq("Email", user)).first();
        if(doc == null){
            return false;
        }
        else if(doc.get("Password").equals(pass)){
            return true;
        }
        return false;
    }

    public static Document getUser(String user){
        return collection.find(Filters.eq("Email", user)).first();
    }

    public static String getRequest(String user){
        String found = "[";
        MongoCollection<Document> col = db.getCollection("Requests");
        for (Document curr : col.find(Filters.eq("From", user))) {
            found += curr.toJson() + ",";
        }
        found += "]";
        return found;
    }

}
