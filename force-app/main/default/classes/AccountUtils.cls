public class AccountUtils {

    public static list<Account> accountsByState(string abbrv){
        
        return [Select Id, Name From Account Where BillingState =: abbrv];
        
    }
}