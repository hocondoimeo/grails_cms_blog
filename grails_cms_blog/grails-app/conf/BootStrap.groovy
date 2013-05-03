import grails_cms_blog.Category
import grails_cms_blog.Subscriber

class BootStrap {

    def init = { servletContext ->
		Category.bootstrap()
		Subscriber.bootstrap()
    }
    def destroy = {
    }
}
