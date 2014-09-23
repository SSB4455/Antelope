package antelope

enum CertificateStatus {有效,过期,收回}

class Certificate {

    String id
    String number
    Date issueDate
    Profile profile
    Program program
    CertificateStatus status
    String remarks

    static constraints = {
        number(blank:false)
        remarks(nullable:true)
    }

    static mapping = {
	    id generator:'uuid'
    }

    static searchable = { 
        profile component: true 
    }
}
