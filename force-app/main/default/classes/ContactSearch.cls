public class ContactSearch {
    
    public static List<Contact> searchForContacts(String lname, String mpostalCode){
        List<Contact> conts = [SELECT Id, Name, LastName, MailingPostalCode 
                               FROM Contact 
                               WHERE lastName = :lname AND MailingPostalCode = :mpostalCode];
        
        return conts;   
    }

}