public class AccountUtility {
	
    Public static void viewAnnualRevenue(){
        
        List<Account> accountsList = [SELECT Name, AnnualRevenue FROM Account];
        
        for (Account act : accountsList){
            String acctRev = act.name + ' : ' + act.AnnualRevenue;
            System.debug(acctRev);
        }
    }
}