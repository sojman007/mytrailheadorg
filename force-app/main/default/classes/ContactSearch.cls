public class ContactSearch {
    public static List<Contact> searchForContacts(String lName, String mpc){
         List<Contact> mylist = [SELECT Id,Name FROM Contact WHERE (LastName=:lName AND MailingPostalCode=:mpc)];
        
          
    return mylist;    
    }
}