public class CampingListController {
 @AuraEnabled 
    public static list<Camping_Item__c> getItems(){
        return [Select Name, Packed__c, Price__c , Quantity__c From Camping_Item__c];
        
    } 
    @auraenabled 
    public static Camping_Item__c saveItem(Camping_Item__c item){
        upsert item; return item;
    }
    
}