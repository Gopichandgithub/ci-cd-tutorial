global class AccountCreationService{

webservice Static id Makeaccount (String AccountName)
{
//5tH CHANGE TO move git 
Account a = new Account (name=AccountName);
insert a;
return a.id;

}
}