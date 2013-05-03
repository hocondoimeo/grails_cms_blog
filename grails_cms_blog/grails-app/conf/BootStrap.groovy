import grails_cms_blog.*

class BootStrap {

    def init = { servletContext ->
		User.bootstrap()
		Category.bootstrap()
		Article.bootstrap()
		Subscriber.bootstrap()
    }
    def destroy = {
    }
}