package antelope
class OrganizationType {

    String id
    String name
    Integer ranking

    static hasMany = [organization:Organization]

    static constraints = {
        name(unique:true, blank:false)
        ranking(unique:true)
    }

    static mapping = {
	    id generator:'uuid'
    }
}
