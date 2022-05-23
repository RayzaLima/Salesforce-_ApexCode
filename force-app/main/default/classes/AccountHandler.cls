public class AccountHandler {
    public static Account insertNewAccount (String name2){
        Account acc = New Account();
        acc.Name = name2;
        
        try {
            insert acc;
            return acc;
        } catch(DMLException e) {
            System.debug('Erro '+ e);
            return null;
        }
        
    }
}