public class AccountHandler {
    public static Account insertNewAccount(String accName){
       Account acct = new Account();
        acct.Name= accName;
        try{
             insert acct;
            }
        catch(DmlException e){
            
            
           return null;
          }
        return acct;
     
    }}