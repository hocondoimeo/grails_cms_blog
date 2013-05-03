
class SecurityFilters {
	def filters = {
		loginCheck(controller: '*', action: '*') {
			before = {
				if(!session.user && controllerName.contains('Admin') && !actionName.equals('login') && !actionName.equals('authenticate')){
				   redirect(controller: "admin/user", action: 'login')
				   return false
				}
			}
		}
		interceptorCheck(controller: '*', action: '*') {
			before = {
				if(session.user && (controllerName in ['userAdmin', 'subscriberAdmin', 'systemAdmin']) && !(session?.user?.role == "admin") && !(actionName.equals('logout'))){
				   redirect(controller: "admin/")
				   return false
				}
			}
		}
	}
}
