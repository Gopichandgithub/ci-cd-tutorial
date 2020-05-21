public class SOSLExample {
    //2nd stage git by Gopi
    public List<List<Sobject>> result {set;get;}
    public List<Account> accs {set;get;}
    public List<Contact> cons {set;get;}
    public SOSLExample(){
        result=[FIND 'satish' IN ALL FIELDS Returning Account(name,Industry where industry='Banking'),Contact(lastname,firstname limit 1)];
    	accs=(List<Account>)result[0];
        cons=(List<Contact>)result[1];
    }
}