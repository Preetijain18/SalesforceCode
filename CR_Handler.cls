public class CR_Handler {
  
    public static void updateuser(list<Contact_Relationship__c> NewUpdateList )
    {
        set<id> contactId = new set<id>();
         for(Contact_Relationship__c ConR :NewUpdateList)
        {
           contactId.add(conr.OwnerId);
           system.debug('hello');
        }
        map<id ,user> newMap = new map<id ,user>([select Id, name  from user where Id = : contactId]);
        for(Contact_Relationship__c ConR :NewUpdateList)
        {
            
           
             
                conr.Name = newmap?.get(conR.ownerId).Name;
            // system.debug(newmap.get(conR.ownerId).Name);
           
        }
    }



}
