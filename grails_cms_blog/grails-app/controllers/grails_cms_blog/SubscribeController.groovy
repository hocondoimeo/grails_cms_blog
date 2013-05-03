package grails_cms_blog

import org.springframework.dao.DataIntegrityViolationException

class SubscribeController {

    static allowedMethods = [save: "POST"]

    def index() {
         [subscriberInstance: new Subscriber(params)]
    }
    

    def save() {
        def subscriberInstance = new Subscriber(params)
        if (!subscriberInstance.save(flush: true)) {
            render(view: "index", model: [subscriberInstance: subscriberInstance])
            return
        }
		sendMail {
			from "blog@gmail.com"
			to params.email
			subject "Subscription Confirmed"
			html  (
                view: "/emailTemplate/subscription",
                model: [email: params.email]
            )
		 }
        flash.message = "You subscribe successfull"
		render(view: "index", model: [subscriberInstance: subscriberInstance])        
		
    }
	
}
