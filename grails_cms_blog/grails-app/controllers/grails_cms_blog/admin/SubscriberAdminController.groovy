package grails_cms_blog.admin

import org.springframework.dao.DataIntegrityViolationException
import grails_cms_blog.Subscriber

class SubscriberAdminController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(controller: "admin/subscriber",action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [subscriberInstanceList: Subscriber.list(params), subscriberInstanceTotal: Subscriber.count()]
    }
}
