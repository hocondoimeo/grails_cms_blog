package grails_cms_blog

class ActiveMenuTagLib {
	def activeMenu = {attrs -> 
		def controller = attrs.controller
		def action = attrs.action?.null
		if (action){
			if (params.controller == controller && params.action == action){
				out << 'class="active"'
			}
		}else
			if (params.controller == controller){
				out << 'class="active"'
			}
		
		
	}
}
