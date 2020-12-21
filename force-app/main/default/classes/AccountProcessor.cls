public class AccountProcessor {

    @future
    public static void countContacts(List<Id> acctIds){
        List<Account> accList = [Select Id, (Select Id, Name from Contacts) from Account];
        for (Account acc: accList){
        	for(ID targid: acctIds){
          
                if(acc.id == targid){
          				          
                    acc.Number_Of_Contacts__c = acc.Contacts.size();
                }   
        }
            update accList;
            
        }
        
        
        
    }
}