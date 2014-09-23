package antelope

class RegistrationForm {

    def formalityService

    String id
    String applicantName
    String validIdentificationNumber
    Gender gender
    Date dateOfBirth
    Organization organization
    String affiliation
    String bankAccountTitle
    String department
    String position
    Rank rank
    String major
    String mobile
    String photo
    String remarks
    Test test
    Boolean isResit
    Boolean isFromClasses
    String admissionTicketNumber

    static hasMany = [subjectRegistered:SubjectRegistered]

    static constraints = {
        applicantName(blank:false)
        affiliation(nullable:true,blank:false)
        department(nullable:true,blank:false)
        position(nullable:true,blank:false)
        rank(nullable:true,blank:false)
        major(nullable:true,blank:false)
        isResit(nullable:true,blank:false)
        isFromClasses(nullable:true,blank:false)
        remarks(nullable:true,blank:false)
        photo(nullable:true,blank:false)
        admissionTicketNumber(nullable:true,blank:false,unique:true)
        bankAccountTitle(nullable:true,blank:false)


        validIdentificationNumber (nullable:true,blank:false,validator: { val, obj ->
            if (!obj.formalityService.checkIDCard(val))
                return 'invalid.idCard'
        })

        gender (nullable:true,blank:false)
        //,validator: { val, obj ->
            //if (!obj.formalityService.checkGender(obj.validIdentificationNumber, val))
                //return 'invalid.gender'
        //}

        dateOfBirth (nullable:true,blank:false,validator: { val, obj ->
            if (!obj.formalityService.checkDateOfBirth(obj.validIdentificationNumber, val))
                return 'invalid.dateOfBirth'
        })

        mobile (nullable:true,blank:false,validator: { val, obj ->
            if (!obj.formalityService.checkMobile(val))
                return 'invalid.mobile'
        })
    }

    static mapping = {
        id generator:'uuid'
    }
    
    static searchable = {
        only: ['applicantName','validIdentificationNumber']
        organization component: true
    }

    static auditable = [ignore:['applicantName','gender','dateOfBirth','organization','affiliation','bankAccountTitle','department','position','rank','major','mobile','photo','remarks','test','isResit','isFromClasses','admissionTicketNumber','subjectRegistered']]
}
