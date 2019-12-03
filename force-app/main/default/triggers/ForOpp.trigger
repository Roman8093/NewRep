trigger ForOpp on Opportunity (after delete) {
    {
        List<Equipment__c> equipments = [SELECT Opportunity__c FROM Equipment__c WHERE Opportunity__c IN:Trigger.OldMap.keyset()];
        delete equipments;
    }
}