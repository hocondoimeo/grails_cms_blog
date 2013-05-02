import grails_cms_blog.Category

class BootStrap {

    def init = { servletContext ->
		Category.bootstrap()
    }
    def destroy = {
    }
}
