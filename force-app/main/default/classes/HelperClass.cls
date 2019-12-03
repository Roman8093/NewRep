public class HelperClass {
    public List<String> getMailAddresses()
    {
        List<String> mailList = new List<String>();
        List<String> mailAddresses = new List<String>(); 
        
        Group g = [SELECT (select userOrGroupId from groupMembers) FROM group WHERE name = 'Finance Department'];
        for (GroupMember gm : g.groupMembers) 
        {
            mailList.add(gm.userOrGroupId);
        }
        User[] usr = [SELECT email FROM user WHERE id IN :mailList];
        for(User u : usr) 
        {
            mailAddresses.add(u.email);
        } 
        return mailAddresses;
    }
}