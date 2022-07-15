public class AddPrimaryContact implements Queueable{
    
    private Contact contact;
    private String state;
   
    
    public AddPrimaryContact(Contact record, String state){
        this.contact=record;
        this.state=state;
    }
    
    public void execute(QueueableContext context){
        List<Contact> contacts = new List<Contact>();
        for(Account account : [Select id, Name from Account where billingstate=:state LIMIT 200]){
            
            Contact conClone = contact.clone();
            conClone.AccountId = account.Id;
            contacts.add(conClone);
        }
        
        insert contacts;
    }

}