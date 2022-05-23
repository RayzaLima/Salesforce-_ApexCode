trigger ClosedOpportunityTrigger on Opportunity (before insert, before update) {
    List<Task> TaskList = new List <Task>();
    
        for(Opportunity opp : Trigger.New) {      
 
        if (opp.StageName == 'Closed Won')  {
            Task tas = new Task();
            tas.Subject = 'Follow Up Test Task';
            tas.WhatId = opp.Id;
            TaskList.add(tas);
        }
    }

    if(TaskList.size() > 0){
		insert TaskList; 
    }
}