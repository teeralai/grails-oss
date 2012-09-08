class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}
        "/mylist"(controller:"todo",action:"list")
		"/"(view:"/index")
		"500"(view:'/error')
	}
}
