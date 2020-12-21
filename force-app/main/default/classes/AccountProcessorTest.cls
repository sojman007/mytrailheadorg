@isTest
public class AccountProcessorTest {
 @isTest
    public static void runTests(){
        Test.startTest();
        //create test data 
        Account acc = new Account(Name='Test A');
        insert acc;
        Contact con = new Contact(FirstName ='Test', LastName=' Contact a' , AccountId=acc.Id);
        insert con;
        list<Id> testIds  = new list<id>();
        testIds.add(acc.Id);
        AccountProcessor.countContacts(testIds);
    	Test.stopTest();
        Account assertAcc = [Select id, Number_Of_Contacts__c from Account where Id =: acc.Id];
        system.assertEquals(assertAcc.Number_Of_Contacts__c , 1);
        
    }
}