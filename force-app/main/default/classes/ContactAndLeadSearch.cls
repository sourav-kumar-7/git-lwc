public class ContactAndLeadSearch {
    
    public static List<List<sObject>> searchContactsAndLeads(String name){
        
        List<List<sObject>> sList = [FIND :name IN ALL FIELDS RETURNING Contact(FirstName,LastName), Lead(FirstName,LastName)];
        
        System.debug(sList);
        return sList;
    }

}