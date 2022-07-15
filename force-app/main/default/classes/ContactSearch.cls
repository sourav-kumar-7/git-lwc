public class ContactSearch {
    
    public static List<Contact> searchForContacts(String lastName, String pCode){
        
        List<Contact> conList = new List<Contact>();
        conList =[Select Id, Name from Contact Where LastName=:lastName AND MailingPostalCode=:pcode];
        //System.debug(conList);
        
        return conList;
    }

}