public class RandomContactFactory {
    public static List<Contact> generateRandomContacts//args in next line
        (Integer numOfContacts, String LName){
        
        List<Contact> mylist = new List<Contact>();
            for (Integer i =0;i<numofContacts;i++){
                Contact c = new Contact();
                c.LastName = LName;
                c.FirstName = 'FName' + i;
                
            mylist.add(c);
            }
            
            return mylist;
        
    }
}