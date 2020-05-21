public class WrapcontactController123{
//3rd change git rep by Gopi
        public List<contact> contactlist{get;set;}
        public List<wrapcontact> wrapcontactlist {get;set;}
       
        public List<account> accountlist{get;set;}
        public List<wrapaccount> wrapaccountlist{get;set;}
        
    public WrapcontactController123()
    
    {
    getwrapperContact();
    getwrapperAccount();
    }
    
    public Void  getwrapperContact(){
        if(wrapcontactlist==null){
            wrapcontactlist=new List<wrapcontact>();
                for(contact cam:[select Id,Name,Email,Phone from contact]){
                    wrapcontactlist.add(new wrapcontact(cam));
                    }
        }
    }
    
    public Void  getwrapperAccount(){
        if(wrapaccountlist==null){
            wrapaccountlist=new List<wrapaccount>();
                for(account acc:[select Id,Name,Phone from account]){
                    wrapaccountlist.add(new wrapaccount(acc));
                    }
        }
    }
    
   
   
  public class wrapcontact{
        public contact camp1{get;set;}
        public Boolean selected{get;set;}
        
  public wrapcontact(contact cam){
        camp1=cam;
        selected=false;
        }
}

    public class wrapaccount{
        public account acc1{get;set;}
        public Boolean selected{get;set;}
        
    public wrapaccount(account acc){
        acc1=acc;
        selected=false;
        
        }
     }

}