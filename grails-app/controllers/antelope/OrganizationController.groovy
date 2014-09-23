package antelope

import org.springframework.dao.DataIntegrityViolationException

class OrganizationController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        //params.max = Math.min(max ?: 10, 100)
        //[organizationInstanceList: Organization.list(params), organizationInstanceTotal: Organization.count()]
		redirect(action: "registrationReport", params: params)
    }

    def create() {
        [organizationInstance: new Organization(params)]
    }

    def save() {
        def organizationInstance = new Organization(params)
        if (!organizationInstance.save(flush: true)) {
            render(view: "create", model: [organizationInstance: organizationInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'organization.label', default: 'Organization'), organizationInstance.id])
        redirect(action: "show", id: organizationInstance.id)
    }

    def show(String id) {
        def organizationInstance = Organization.get(id)
        if (!organizationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'organization.label', default: 'Organization'), id])
            redirect(action: "list")
            return
        }

        [organizationInstance: organizationInstance]
    }

    def edit(String id) {
        def organizationInstance = Organization.get(id)
        if (!organizationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'organization.label', default: 'Organization'), id])
            redirect(action: "list")
            return
        }

        [organizationInstance: organizationInstance]
    }

    def update(String id, Long version) {
        def organizationInstance = Organization.get(id)
        if (!organizationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'organization.label', default: 'Organization'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (organizationInstance.version > version) {
                organizationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'organization.label', default: 'Organization')] as Object[],
                          "Another user has updated this Organization while you were editing")
                render(view: "edit", model: [organizationInstance: organizationInstance])
                return
            }
        }

        organizationInstance.properties = params

        if (!organizationInstance.save(flush: true)) {
            render(view: "edit", model: [organizationInstance: organizationInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'organization.label', default: 'Organization'), organizationInstance.id])
        redirect(action: "show", id: organizationInstance.id)
    }

    def delete(String id) {
        def organizationInstance = Organization.get(id)
        if (!organizationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'organization.label', default: 'Organization'), id])
            redirect(action: "list")
            return
        }

        try {
            organizationInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'organization.label', default: 'Organization'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'organization.label', default: 'Organization'), id])
            redirect(action: "show", id: id)
        }
    }
	
	
    def registrationReport() {
		
		def programList = Program.list()
		def testList = Test.list()
		def subjectList = Subject.list()
		def organizationList = Organization.list()
		
        [programList: programList, testList: testList, subjectList: subjectList, organizationList: organizationList]
		//render params as Jasper
    }
	
	def registrationInformationByTest() {
		println params['test.id']
		redirect(action: "reportRegistrationInformation", params: params)
	}
	
	def reportRegistrationInformation() {
		def test_id = params['test.id']
		def subject_id = params['subject.id']
		def organization_id = params['organization.id']
		
		
		def c = RegistrationForm.createCriteria()
		def registrationFormInstanceList = c.list {
			and {
				eq("test_id", test_id)
				eq("branch", "London")
			}
			maxResults(10)
			order("holderLastName", "desc")
		}
		[registrationFormInstanceList: registrationFormInstanceList, test_id: test_id]
	}
	
    def markReport() {
		
		def programList = Program.list()
		def testList = Test.list()
		def subjectList = Subject.list()
		def organizationList = Organization.list()
		
        [programList: programList, testList: testList, subjectList: subjectList, organizationList: organizationList]
		//render params as Jasper
    }
	
    def statisticsReport() {
		
		def programList = Program.list()
		def testList = Test.list()
		def subjectList = Subject.list()
		def organizationList = Organization.list()
		
        [programList: programList, testList: testList, subjectList: subjectList, organizationList: organizationList]
		//render params as Jasper
    }
}
