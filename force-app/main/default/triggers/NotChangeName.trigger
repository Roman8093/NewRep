trigger NotChangeName on Account (before update) {
    
    for (Account aNew : Trigger.new) {
        for(Account aOld : Trigger.old){
            if(aNew.Id == aOld.Id) {
                if ((aNew.Type == 'Customer - Direct' || aNew.Type == 'Customer - Channel') && aNew.Name != aOld.Name){
                    aNew.addError(
                        'Cannot change the name if account has the Customer - Direct or Customer - Channel Type.');
                }
            }
        }
    }
    
}