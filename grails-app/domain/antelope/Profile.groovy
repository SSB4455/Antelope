package antelope

class Profile {
    
    String id
	String name
    Gender gender
    String validIdentificationNumber
    Date dateOfBirth
    String major
    PoliticalStatus politicalStatus
    String ethnic
    EducationalDegree educationalDegree
    String telephone
    String mobile
    String photo
    String remarks
    Date lastUpdated
    
    static constraints = {
        name (blank:false)
        gender (nullable:true,blank:false)
        validIdentificationNumber (nullable:true,blank:false,unique:true)
        dateOfBirth (nullable:true,blank:false)
        major (nullable:true,blank:false)
        politicalStatus (nullable:true,blank:false)
        ethnic (nullable:true,blank:false)
        educationalDegree (nullable:true,blank:false)
        telephone (nullable:true,blank:false)
        mobile (nullable:true,blank:false)
        photo (nullable:true,blank:false)
        remarks (nullable:true)
        lastUpdated (nullable:true)
    }
    
    static hasMany = [certificate:Certificate]
    
    static mapping = {
	    id generator:'uuid'
    }
    
    
    static searchable = {
        only: ['name','validIdentificationNumber']
        professionalExperience component: true
        //从staffMember作入口(即search的controller提交的是staffMember), 查找profile, 这样可以 leverage organization
    }
    
}
