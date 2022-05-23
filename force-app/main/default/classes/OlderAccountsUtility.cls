public class OlderAccountsUtility { //Criação da Classe "Utilitário de contas mais antigas" 
        public static void updateOlderAccounts() { //Criação do metodo "atualizar contas mais antigas" STATIC = intância de classe ou seja updateOlderAccounts é uma instância da classe OlderAccountsUtility
          Account[] oldAccounts = [SELECT Id, Description FROM Account ORDER BY CreatedDate ASC LIMIT 5];//para a conta ter como parametro "contaantiga(old Account), ele vai selecionar as 5 contas mais antigas usando como base a data da criação(CreatedDate),            
          for (Account acct : oldAccounts) { //SE(for) a conta acct(nick da conta), for conta antiga(oldAccount)   
          acct.Description = 'Heritage Account'; // a descrição da contaSelecionada(account.descripition) será atualizada para Conta Primária
          }
          update oldAccounts; //Solicita a Alteração(update) das Contas antigas (OldAccounts) 
       }
}