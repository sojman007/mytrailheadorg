@isTEst
public class TestRestrictContactByName {
    @isTest static void  testMet(){
        Contact testContact = new Contact(FirstName= 'first name',
                                         LastName= 'INVALIDNAME');
        
        Test.startTest();
       Database.SaveResult res = Database.insert(testContact,false);
        System.assert(!res.isSuccess());
		System.assert(res.getErrors().size() > 0);
		System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML',
							res.getErrors()[0].getMessage());

 

    }
    
}