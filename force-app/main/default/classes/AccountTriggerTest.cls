@isTest
public class AccountTriggerTest {

    @isTest
    public static void TestAccountTriggerHandler(){
     List<Account> accounts = new List<Account>();
        for(integer i =0; i <200 ;i++){
            Account a = new Account(Name='test account '+ i , BillingState='CA');
            accounts.add(a);
        }
        
       
        insert accounts;
        
       List<account> updated = [Select ShippingState , BillingState from Account];
        
        if(updated.size() >0 && updated != null){
            for(account a : updated){
                System.assertEquals(a.BillingState,a.ShippingState  );
            }
        }
    }
    
}