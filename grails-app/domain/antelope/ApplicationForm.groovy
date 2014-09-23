package antelope

enum Gender {男,女}
enum Rank {科员,副主任科员,主任科员,副处级,正处级,副司级,正司级,其他}
enum PoliticalStatus {中共党员,民主党派,群众,其他}
enum EducationalDegree {研究生,本科,大专}
enum ProfessionalTitle {审计师,助理审计师,高级审计师,会计师,助理会计师,高级会计师,经济师,助理经济师,高级经济师,工程师,助理工程师,高级工程师,副教授,讲师,教授,其他}
enum Ethnic {汉族,壮族,满族,回族,苗族,维吾尔族,土家族,彝族,蒙古族,藏族,布依族,侗族,瑶族,朝鲜族,白族,哈尼族,哈萨克族,黎族,傣族,畲族,傈僳族,仡佬族,东乡族,高山族,拉祜族,水族,佤族,纳西族,羌族,土族,仫佬族,锡伯族,柯尔克孜族,达斡尔族,景颇族,毛南族,撒拉族,布朗族,塔吉克族,阿昌族,普米族,鄂温克族,怒族,京族,基诺族,德昂族,保安族,俄罗斯族,裕固族,乌兹别克族,门巴族,鄂伦春族,独龙族,塔塔尔族,赫哲族,珞巴族}

class ApplicationForm {

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
    Classes classes
    Boolean isAllowed
    String email
    Integer lengthOfService
    PoliticalStatus politicalStatus
    Ethnic ethnic
    EducationalDegree educationalDegree
    ProfessionalTitle professionalTitle
    Integer lengthOfAuditService
    String telephone

    static constraints = {
        applicantName(blank:false)
        affiliation(nullable:true,blank:false)
        department(nullable:true,blank:false)
        position(nullable:true,blank:false)
        politicalStatus(nullable:true,blank:false)
        major(nullable:true,blank:false)
        rank(nullable:true,blank:false)
        educationalDegree(nullable:true)
        professionalTitle(nullable:true)
        ethnic(nullable:true,blank:false)
        lengthOfService(nullable:true,blank:false)
        lengthOfAuditService(nullable:true,blank:false)
        telephone(nullable:true,blank:false)
        email(nullable:true,email:true)
        isAllowed(nullable:true,blank:false)
        remarks(nullable:true,blank:false)
        photo(nullable:true,blank:false)
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
}
