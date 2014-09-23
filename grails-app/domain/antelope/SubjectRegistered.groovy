package antelope

class SubjectRegistered {

    String id
    Subject subject
    double score
    String remarks

    static hasMany = [mark:Mark]

    static belongsTo = [registrationForm:RegistrationForm]

    static constraints = {
        remarks(nullable:true)
    }

    static mapping = {
	    id generator:'uuid'
    }
}
