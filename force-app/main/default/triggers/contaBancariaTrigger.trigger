//contexto                            //
trigger contaBancariaTrigger on ContaBancaria__c (before insert, after insert, after update) {
    if(Trigger.isUpdate){
        //uma vez que for alterada, informa ao proprietário da conta o saldo atual.
        ContaBancariaTriggerHandler.atualizaConta(Trigger.new);
        
    }
}