trigger OppClosedWon on Opportunity (before update) {
    
    List <Equipment__c> newEq = new List <Equipment__c> ();
    
    for (Opportunity o : Trigger.new) { 
        
        if (o.StageName == 'Closed Won'){
            
            Equipment__c e = new Equipment__c();            
            e.Name__c = o.Name;
            e.Opportunity__c = o.Id;
            e.Date__c = o.CloseDate;
            
            newEq.add(e);
        }        
    }
    insert newEq;
}