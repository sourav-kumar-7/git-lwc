@isTest
public class AddPrimaryContactTest{
    
    @isTest
    public static void testQueueable(){
        //Load data
        List<Account> accounts = new List<Account>();
        
        for(Integer i=0;i<100;i++){
            if(i<50){
                accounts.add(new Account(name='Test Account'+i, billingstate='NY'));
            }
            else{
                accounts.add(new Account(name='Test Account'+i, billingstate='CA')); 
            }
        }
        insert accounts;
        
        Contact con = new Contact(FirstName='Sam', LastName='Kumar');
        insert con;
        
        AddPrimaryContact add = new AddPrimaryContact(con,'CA');
        
        Test.startTest();
        System.enqueueJob(add);
        Test.stopTest();
        
        System.assertEquals(50, [Select count() from contact where contact.account.billingstate='CA']);
      
        
    }
}