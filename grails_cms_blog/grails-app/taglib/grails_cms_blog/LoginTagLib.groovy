package grails_cms_blog

class LoginTagLib {
   def loginControl = {
	if(session.user){
		out << """<li class="admin-name">Hello ${session.user.name}</li>"""
		out << """<li>${link(action: "logout", controller: "admin/user"){"[Logout]"}}</li>"""
	}else{
		out << """<li>${link(action: "login", controller: "admin/user"){"[Login]"}}</li>"""
	}
    }
}
