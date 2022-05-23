trigger AccountDeletion on Account (before insert) {
    //Impedir a exclusão de contas se houver oportunidades relacionadas.
    // Prevent the deletion of accounts if they have related opportunities.
    for (Account a : [SELECT Id FROM Account
                     WHERE Id IN (SELECT AccountId FROM Opportunity) AND
                     Id IN :Trigger.old]) {
        Trigger.oldMap.get(a.Id).addError(
            'Cannot delete account with related opportunities.');
           //Não é possível excluir conta com oportunidades relacionadas.
    }
}