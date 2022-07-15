@isTest
private class LeadProcessorTest {
    @testSetup
    static void setup(){
        
        List<Lead> leads = new List<Lead>();
        
        for(Integer i=0;i<200;i++){
            leads.add(new Lead(firstname='lead_firstname '+i, lastname='lead_lastname '+i, company='xyz'));
        }
        insert leads;
        
    }
    
    @isTest
    static void test(){
        Test.startTest();
        LeadProcessor lp = new LeadProcessor ();
        Id batchId = Database.executeBatch(lp);
        Test.stopTest();
        
        System.assertEquals(200, [Select count() from Lead where LeadSource = 'Dreamforce']);
    }

}