trigger AssignLeadToQueue on Lead (before insert, before update) {
    Group WebQueue = [Select Id from Group where Type = 'Queue' AND Name = 'Leads Queue Web' LIMIT 1];
    Group CusQueue = [Select Id from Group where Type = 'Queue' AND Name = 'Leads Queue Customer' LIMIT 1];	
    
    for(Lead l : Trigger.new){
        if (l.LeadSource == 'Web') {
            l.OwnerId = WebQueue.Id;
        } else {
            l.OwnerId = CusQueue.Id;
        }
    }
}