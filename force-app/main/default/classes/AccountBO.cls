public class AccountBO {
    private static final AccountBO instance = new AccountBO(); 
    
    public static void createChildAccount(List<Account> triggerNew) {
        
        List<Account> childAccountList = new List<Account>();

        for (Account acc : triggerNew) {
            if(acc.ParentId == null && acc.status__c == 'Cold'){
                Account childAccount  = new account();
                childAccount.Name = acc.Name;
                childAccount.status__c = acc.status__c;
                childAccount.ParentId = acc.Id;
                childAccountList.add(childAccount);
            }
        }
        insert childAccountList;
    }
} 