package antelope

class Mark {

    String id
    Part part
    double mark
    String remarks
    
    static belongsTo = [subjectRegistered:SubjectRegistered]

    static constraints = {
        remarks(nullable:true,blank:true)
    }

    static mapping = {
	    id generator:'uuid'
    }
}
