package antelope

class Part {

    String id
    String name
	Integer fullMarks
    Integer ranking
    String remarks

    static belongsTo = [subject:Subject]

    static constraints = {
	    name(blank:false)
		fullMarks(min:0)
        remarks(nullable:true)
    }

    static mapping = {
	    id generator:'uuid'
    }
}
