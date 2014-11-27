package tutoit

import grails.plugins.springsecurity.Secured

class SensitiveContentController {

	@Secured(['ROLE_ADMIN'])
    def index() {
    	render "Some sensitive content"
    }


}
