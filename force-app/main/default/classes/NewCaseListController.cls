public class NewCaseListController {
    public List<Case> getNewCases(){
        
        List<Case> caseList = [SELECT ID,CaseNumber FROM Case
                               WHERE Status= 'NEW'];
        return caseList;
        
        
    }
}