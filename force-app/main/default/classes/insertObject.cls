public with sharing class insertObject {
    @AuraEnabled
    public static void insertCon(String firstname, String lastname, String email,  String phone, String accountid){ 
        
        Contact con = new Contact ();
        con.FirstName=firstname;
        con.LastName=lastname;
        con.Email=email;
        con.Phone=phone;
        con.AccountId=accountid;

        insert con;
    }   
}