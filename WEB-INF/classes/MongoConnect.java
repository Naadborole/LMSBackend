import java.io.*;
import com.mongodb.client.*;
import org.bson.*;
import com.mongodb.client.model.Filters;


public class MongoConnect {
    private static MongoClient client;
    private static MongoDatabase db;
    private static MongoCollection<Document> collection;
    private static MongoCollection<Document> collectionAdmin;

    MongoConnect(){
        client = MongoClients.create(
                "mongodb+srv://LMS:KMORIa3UZlTcon62@onlib.i34wm.mongodb.net/myFirstDatabase?retryWrites=true&w=majority");
        db = client.getDatabase("LMS");
        collection = db.getCollection("Employee");
        collectionAdmin = db.getCollection("Admin");
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

    public static Boolean AdminAuthenticate(String AdminUser, String pass){
        Document doc = collectionAdmin.find(Filters.eq("Email", AdminUser)).first();
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

    public static Document getAdminUser(String AdminUser){
        return collectionAdmin.find(Filters.eq("Email", AdminUser)).first();
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

    public static String getAdminPendingLeaves(String AdminUser){
        String found = "[";
        MongoCollection<Document> col = db.getCollection("Requests");
        for (Document curr : col.find(Filters.and(Filters.eq("To", AdminUser),Filters.eq("Status", "Pending")))) {
            found += curr.toJson() + ",";
        }
        found += "]";
        return found;
    }

    public static String getMembersUnderAdmin(String AdminUser){
        Document doc = collectionAdmin.find(Filters.eq("Email", AdminUser)).first();
        String data = "[";
        MongoCollection<Document> col = db.getCollection("Employee");
        for(Document curr: col.find(Filters.eq("Department", doc.get("Department")))){
            data += curr.toJson() + ",";
        }
        data += "]";
        return data;
    }

}
