package antelope

class Subject {

    String id
    String name
    Program program
	Integer fullMarks
    Integer ranking
    String remarks
    
    static hasMany = [part:Part]

    static constraints = {
		name(blank:false)
		fullMarks(min:0)
        remarks(nullable:true)
    }

    static mapping = {
	    id generator:'uuid'
    }
}
