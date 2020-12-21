public class AccountTriggerHandler {

    
    public static void CreateAccounts(List<Account> accounts){
        for(account a : accounts){
            a.ShippingState = a.BillingState;
        }
    }

}