import java.io.*;
import com.mongodb.client.*;
import org.bson.*;
import org.bson.types.ObjectId;
import java.util.*;
import com.mongodb.client.model.Filters;
import com.mongodb.client.model.Updates;


public class MongoConnect {
    private static MongoClient client;
    private static MongoDatabase db;
    private static MongoCollection<Document> collection;
    private static MongoCollection<Document> collectionAdmin;
    private static MongoCollection<Document> collectionMaster;

    MongoConnect(){
        client = MongoClients.create(
                "mongodb+srv://LMS:KMORIa3UZlTcon62@onlib.i34wm.mongodb.net/myFirstDatabase?retryWrites=true&w=majority");
        db = client.getDatabase("LMS");
        collection = db.getCollection("Employee");
        collectionAdmin = db.getCollection("Admin");
        collectionMaster = db.getCollection("MasterAdmin");
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

    public static void InsertEmployee(String email, String fname, String lname, String passwd){
        Document doc = new Document("Email", email);
        doc = doc.append("FirstName", fname);
        doc = doc.append("LastName", lname);
        doc = doc.append("Password", passwd);
        doc = doc.append("AD", false);
        collection.insertOne(doc);
    }

    public static void InsertAdminToMaster(String email, String fname, String lname, String dept, String title, String passwd){
        Document doc = new Document("Email", email);
        doc = doc.append("FirstName", fname);
        doc = doc.append("LastName", lname);
        doc = doc.append("Department", dept);
        doc = doc.append("Title", title);
        doc = doc.append("Password", passwd);
        doc = doc.append("Status","Pending");
        //collectionMaster.insertOne(doc);
        collectionMaster.updateOne(Filters.eq("Email", "masteradmin@lmsSys2104.com"),Updates.addToSet("Requests", doc));
    }

    public static String getMembersUnderMasterAdmin(String AdminUser){
        Document doc = collectionMaster.find(Filters.eq("Email", AdminUser)).first();
        String data = "[";
        MongoCollection<Document> col = db.getCollection("MasterAdmin");
        //for(int i = 0 ; i < col.)
        for(Document curr: col.find(Filters.eq("Requests.Status", "Pending"))){
            data += curr.toJson() + ",";
        }
        data += "]";
        return data;
    }

    public static String getRequestInfoUnderAdmin(String ID){
        String data = "[";
        MongoCollection<Document> col = db.getCollection("Requests");
        Document temp = col.find(Filters.eq("_id", new ObjectId(ID))).first();
        data += temp.toJson() + ",";
        data += "]";
        return data;
    }
    public static void InsertRequest(String fromem,String toem, String sub, String reason, String dtfrom, String dtto, String type){
        Document d =collection.find(Filters.eq("Email", fromem)).first();
        String name = d.get("FirstName").toString();
        name += " " + d.get("LastName").toString();
        System.err.println(name);
        Document doc = new Document("From", fromem);
        doc = doc.append("To", toem);
        doc = doc.append("Status", "Pending");
        doc = doc.append("DateFrom", dtfrom);
        doc = doc.append("DateTo", dtto);
        doc = doc.append("Subject", sub);
        doc = doc.append("Reason", reason);
        doc = doc.append("Type", type);
        doc = doc.append("Name", name);
        MongoCollection<Document> c = db.getCollection("Requests");
        c.insertOne(doc);
    }

    public static String getMasterAdminList(){
        String found = "[";
        Document doc = collectionMaster.find(Filters.eq("Email", "masteradmin@lmsSys2104.com")).first();
        ArrayList<Document> a = (ArrayList<Document>)doc.get("Requests");
        for(int i=0; i<a.size(); i++){
            Document d = a.get(i);
            if(d.getString("Status").equals("Pending")){
                found += d.toJson() + ",";
            }
        }
        found += "]";
        return found;
    }

}
