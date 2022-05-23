public class ContactAndLeadSearch {
    
    public static List<List<sObject>> searchContactsAndLeads(String str){  
        List<List<sObject>> contLead = [FIND :str IN ALL FIELDS  
                                        RETURNING Contact(Name, lastName), Lead(Name, lastName)];
        
        return contLead;

	}
}