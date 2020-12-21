@isTest
public class TestDataFactory {
    public static List<Account> createAccountsWithOpps(Integer numAccts, 
                                                       Integer numOppsPerAcct) {
        //create the sample data to be used inside the test
        List<Account> accts = new List<Account>();
        
        for(Integer i=0;i<numAccts;i++) {
            Account a = new Account(Name='TestAccount' + i);
            accts.add(a);
        }//add an account to the accts array for the specified number of accounts
         //in the create method
        insert accts;
        
        List<Opportunity> opps = new List<Opportunity>();
        for (Integer j=0;j<numAccts;j++) {
            Account acct = accts[j];//assign an account to the
            //previous array created using an index that will be useful in the
            //next iteration in order to be able assign a unique account id to each
            //opportunity..
            // For each account just inserted, add opportunities
            for (Integer k=0;k<numOppsPerAcct;k++) {
                opps.add(new Opportunity(Name=acct.Name + ' Opportunity ' + k,
                                       StageName='Prospecting',
                                       CloseDate=System.today().addMonths(1),
                                       AccountId=acct.Id));
            }
        }
        // Insert all opportunities for all accounts.
        insert opps;
        
        return accts;
    }
}