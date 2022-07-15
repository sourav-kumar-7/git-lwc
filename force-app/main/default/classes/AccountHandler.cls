//Sourav
public class AccountHandler {
    
    public static Account insertNewAccount (String AcctName){
        
        Account acct = new Account(Name=AcctName);
        
        try{
            
            insert acct;
         
        }
        Catch(DMLException e){
            
            //System.debug('NULL');
            return null;
            
        }
        
       // Account[] acc =[Select Id,Name from Account where Id=:acct.Id];
        //System.debug(acct);
        return acct;
    }

}