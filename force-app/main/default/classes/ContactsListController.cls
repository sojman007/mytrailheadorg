public class ContactsListController {
private string sortOrder = 'LastName';
    public List<Contact> getContacts(){
        string thequery = 'SELECT Id, FirstName, LastName,Title,Email' + 
        ' FROM Contact ' + ' ORDER BY ' + sortOrder +
        ' ASC ' + ' LIMIT 10 ';
        List<Contact> results = Database.query(thequery); 
        system.debug('the query: ' + thequery);
        return  results;
    }
    public void sortByFirstName(){
        this.sortOrder = 'FirstName';
        
        }
    public void sortByLastName(){
        this.sortOrder = 'LastName';
        
    }
}