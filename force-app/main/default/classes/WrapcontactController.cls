public class WrapcontactController{
//Test Git commoit by gopi
        public List<contact> contactlist{get;set;}
        public List<wrapcontact> wrapcontactlist {get;set;}
        
    public WrapcontactController(){
        if(wrapcontactlist==null){
            wrapcontactlist=new List<wrapcontact>();
                for(contact cam:[select Id,Name,Email,Phone from contact]){
                    wrapcontactlist.add(new wrapcontact(cam));
                    }
        }
    }
    public void processSelectedcontacts(){
        contactlist=new List<contact>();
             for(wrapcontact Obj:wrapcontactlist){
                 if(Obj.selected==true){
                     contactlist.add(Obj.camp1);
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
}