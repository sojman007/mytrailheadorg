public class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsandLeads(String searchtext){
        
		List<List<sObject>> result = [FIND :searchtext IN ALL FIELDS
                                     RETURNING Contact(FirstName,LastName), Lead(ID)];       
        
        
        Contact[] contacts = (Contact[])result[0];
        Lead[] leads = (Lead[])result[1]; 
        
        return result;
    }

}