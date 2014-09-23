package antelope

class Program {

    String id
    String name
    Integer ranking
    String certificateName

    static hasMany = [subject:Subject, classes:Classes, test:Test]
    
    static constraints = {
		name (unique:true, blank:false)
		certificateName (nullable:true, unique:true, blank:true)
        ranking(unique:true, min:1)
    }

    static mapping = {
	    id generator:'uuid'
    }
}
