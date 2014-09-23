package antelope

import java.util.Calendar

class Test {

    String id
    String name
    Integer year
    Integer ranking
    Date startDate
    Date endDate
    Date registrationStartDate
    Date registrationEndDate
    Date registrationReleaseDate
    Date resultsReleaseDate
    Program program
    String remarks

    static hasMany = [registrationForm:RegistrationForm]

    static constraints = {
		name(blank:false)
		year(min:2001,blank:false)
        ranking(blank:false)
        startDate(nullable:true)
        endDate(nullable:true)
        registrationStartDate(nullable:true)
        registrationEndDate(nullable:true)
        registrationReleaseDate(nullable:true)
        resultsReleaseDate(nullable:true)
        remarks(nullable:true)
    }

    static mapping = {
	    id generator:'uuid'
    }
}
