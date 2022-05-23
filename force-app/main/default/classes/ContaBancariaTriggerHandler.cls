public class ContaBancariaTriggerHandler {
    
    public static void atualizaConta(List<ContaBancaria__c> Contas){
        for(ContaBancaria__c conta : contas){
            System.debug('-----------------');
            System.debug('Conta ' +conta.Numero__c);
            System.debug('Saldo' +conta.Saldo__c);
        }
    }
}