@isTest
private class TestAccountDeletion {
    @isTest static void TestAccountDeletionWithOneOpportunity() {
        // Test data setup
        // Create one account with one opportunity by calling a utility method
        Account[] accts = TestDataFactory.createAccountsWithOpps(1,1);
        
        //Realizar teste de exclusão da conta
        Test.startTest();
        Database.DeleteResult result = Database.delete(accts[0], false);
        Test.stopTest();
        
        // Verificar 
        // Neste caso, a exclusão deve ter sido interrompida pela Trigger, 
        // portanto, verifique se recebemos um erro.
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('Cannot delete account with related opportunities.', 
                            result.getErrors()[0].getMessage());
    }
    
    @isTest static void TestAccountDeletionWithNoOpportunity(){
        Account[] accts = TestDataFactory.createAccountsWithOpps(1,0);
        
        // Execute o teste
        Test.startTest();
        Database.DeleteResult result = Database.delete(accts[0], false);
        Test.stopTest();
        
        // Verify that the deletion was successful
		// Verifique se a exclusão foi bem-sucedida
		System.assert(result.isSuccess());
    }
    
    @isTest static void TestDeleteBulkAccountWithOneOpportunity () {
        // Testar configuração de dados 
        // Crie contas com uma oportunidade cada chamando um método de utilitário
        Account[] accts = TestDataFactory.createAccountsWithOpps(200, 1);
        
        //Realizar teste
        Test.startTest();
        Database.DeleteResult[] results = Database.delete(accts, false);
        Test.stopTest();
		
		// Verifique para cada registro. 
		// Neste caso, a exclusão deve ter sido interrompida pelo gatilho,
		// então verifique se recebemos um erro.    
        for(Database.DeleteResult dr : results) {
            System.assert(!dr.isSuccess());
            System.assert(dr.getErrors().size() > 0);
            System.assertEquals('Cannot delete account with related opportunities.', 
                                dr.getErrors()[0].getMessage());
        }
    }
    
    @isTest static void TestDeleteBulkAccountsWithNoOpportunities() {
        // Configuração de dados de teste
        // Crie contas sem oportunidades chamando um método utilitário
		Account[] accts = TestDataFactory.createAccountsWithOpps(200, 0);
        
        // Realizar teste
        Test.startTest();
        Database.DeleteResult[] results = Database.delete(accts, false);
        Test.stopTest();
        
        //Para cada registro, verifique se a exclusão foi bem-sucedida
        for(Database.DeleteResult dr : results) {
            System.assert(dr.isSuccess());
        }
    }
    
}