@isTest
public class TestclassDemo
{
    static testMethod void test() 
    {
        List<Contact> accList = new List<Contact>();
        for(Integer i = 0 ; i < 200; i++)
        {
            Contact acc = new Contact ();
            acc.LastName = 'LastName' + i;
            accList.add(acc);
        }
        Insert accList;
         
        Test.startTest();
        TestDemoContactBatch obj = new TestDemoContactBatch();
        DataBase.executeBatch(obj); 
        Test.stopTest();
         
        
        List<Contact> UpdatedList = [SELECT Id,LastName FROM Contact];
        System.assert(UpdatedList[0].LastName.Contains('Dell!'));
    } 
}