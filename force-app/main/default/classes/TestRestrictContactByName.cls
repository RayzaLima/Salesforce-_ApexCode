@isTest
public class TestRestrictContactByName {
    @isTest static void InsertName() {
        Contact cont = new Contact();
        cont.LastName = 'INVALIDNAME';
            
        Database.SaveResult res = Database.insert(cont, false);
        System.assertEquals('The last name "INVALIDNAME" is not allowed for DML', res.getErrors()[0].getMessage());
    }
}