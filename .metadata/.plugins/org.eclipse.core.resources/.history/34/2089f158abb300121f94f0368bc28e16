class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}
		"/"(controller: "index", action: "index")
		"/admin/"(controller: "indexAdmin")
		"/admin/$cName"{
			controller = {params.cName + "Admin"}
			action = 'list'
		}
		"/admin/$cName/$aName/$id?"{
			controller = {params.cName + "Admin"}
			action = {params.aName}
		}
		"500"(view:'/error')
	}
}



