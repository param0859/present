public without sharing class AccountController {

    @AuraEnabled(cacheable = true)
    public static List<Account> getAccounts(String recordId) {
        return [SELECT Id, Name FROM Account WHERE Id = :recordId LIMIT 5];
    }
}