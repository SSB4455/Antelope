package antelope

class Classes {

    String id
    String name
    Integer year
    Integer ranking
    Date startDate
    Date endDate
    Date applicationStartDate
    Date applicationEndDate
    Date applicationReleaseDate
    Program program
    String remarks

    static hasMany = [applicationForm:ApplicationForm]

    static constraints = {
        name(blank:false)
        year(min:2001,blank:false)
        ranking(blank:false)
        applicationStartDate(nullable:true)
        applicationEndDate(nullable:true)
        applicationReleaseDate(nullable:true)
        startDate(nullable:true)
        endDate(nullable:true)
        remarks(nullable:true)
    }

    static mapping = {
	    id generator:'uuid'
    }
}
