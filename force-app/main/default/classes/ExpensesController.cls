public with sharing class ExpensesController {
    
    @AuraEnabled
    public static list<Expense__c> getExpenses(){
        //check accecibility before allowing access
     integer numberOfExceptions =0;   
        list<string> fieldsToCheck = new List<string>{ 
        	'Name', 'Client__c' ,'Date__c' ,'Amount__c'
        
        } ;
            Map<string , Schema.SObjectField> fieldsMap = new Map<string, Schema.SObjectField>();
        	fieldsMap = Schema.SObjectType.Expense__c.fields.getMap();
        
        for(string field : fieldsToCheck){
            if(!fieldsMap.get(field).getDescribe().isAccessible()){
                numberOfExceptions++;
                    }
        
        }
         
        if(numberOfExceptions >=1){
             throw new System.NoAccessException();
            
        }
        
        list<Expense__c> expenses = [Select Id, Name , Client__c, Reimbursed__c, Amount__c , Date__c, CreatedDate From Expense__c];
       system.debug(expenses);
        return expenses;
    }
    
    @AuraEnabled
    public static Expense__c saveExpense(Expense__c exp){
        upsert exp;
        return exp;
        
    }
    
}