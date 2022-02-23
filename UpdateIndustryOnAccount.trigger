trigger UpdateIndustryOnAccount on Contact (after insert, after update) {
Set<Id> accountIds = new Set<Id>();
List<Contact> con = [SELECT Id FROM Contact WHERE Id in: Trigger.new];
List<Contact> contactsToUpdate = new List<Contact>();

for(Contact c: con) {

    if(con.size()>0){
     c.Account_Industry__c = c.Account.Industry;
     contactsToUpdate.add(c);
     }
}
if(contactsToUpdate.size() > 0){
update contactsToUpdate;
}



}
