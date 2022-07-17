trigger AccountTrigger on Account (after insert, after update) {
    
    if(Trigger.isAfter){

       if(Trigger.isInsert || Trigger.isUpdate){
           AccountBO.createChildAccount(Trigger.New); 
       }

    }
   }