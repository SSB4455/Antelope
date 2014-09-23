package antelope

class Organization {

    String id
    String name
    String department
    String contact
    String telephone
    String mobile
    String email
    String address
    String postcode
    Integer ranking
    String remarks
    OrganizationType type

    static constraints = {
	    name(unique:true,blank:false)
        ranking(blank:false)
        department(nullable:true,blank:false)
        contact(nullable:true,blank:false)
        telephone(nullable:true,blank:false)
        mobile(nullable:true,blank:false)
        email(email:true,blank:true,nullable:true)
        address(nullable:true,blank:false)
        postcode(nullable:true,blank:false)
        remarks(nullable:true)
    }

    static mapping = {
	    id generator:'uuid'
    }

    static searchable = [only: 'name']
}
