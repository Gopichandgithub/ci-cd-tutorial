public with sharing class UpdateLead {
//gopi huy
public Lead ld {get; set;}
Id AssesId = ApexPages.currentPage().getparameters().get('id');

    public UpdateLead(ApexPages.StandardController controller) {
    
    controller.save();
        }
    
    public void save(){
    
    
    
    }

}