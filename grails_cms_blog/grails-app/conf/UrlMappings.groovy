class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}
		"/"(controller: "index", action: "index")
		"/admin/"(controller: "indexAdmin")
		"/admin/$cName"{controller = {params.cName + "Admin"}}
		"500"(view:'/error')
	}
}



