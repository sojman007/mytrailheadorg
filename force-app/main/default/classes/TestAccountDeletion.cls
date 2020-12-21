@isTest
public class TestAccountDeletion {
    @isTest static void TestDeleteAccountWithOneOpportunity(){
        //Test data set up
        // create an account with an opportunity and try to delete it
        Account acct = new Account(Name='Trigger TestAccount');
    	insert acct;
        Opportunity TrigTestOp = new Opportunity( Name = acct.Name + 
                                                 'Opportunity',
                                                StageName= 'Prospecting',
                                                CloseDate = System.today().addMonths(1),
                                                AccountId = acct.Id);
   insert TrigTestOp;
        // start testiing using the test class
    Test.startTest();
    Database.DeleteResult result = Database.delete(acct, false);
        Test.stopTest();
 		System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('Cannot delete account with related opportunities.',
                             result.getErrors()[0].getMessage());    
    
    
    
    
    }
}