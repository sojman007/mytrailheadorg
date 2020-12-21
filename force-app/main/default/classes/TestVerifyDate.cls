@isTest
public class TestVerifyDate {
    @isTest static void testCheckDates(){
        
     Date dateTestVariable = 
         VerifyDate.CheckDates(Date.newInstance(2011,1,1), 
                               Date.newInstance(2011,01,20));
    System.assertEquals(Date.newInstance(2011,01,20), dateTestVariable);    
        
       
     Date dateTestVariable2 = 
         VerifyDate.CheckDates(Date.newInstance(2011,1,1), 
                               Date.newInstance(2011,05,01));
    System.assertEquals(VerifyDate.SetEndOfMonthDate(Date.newInstance(2011,1,1)), dateTestVariable); }
}