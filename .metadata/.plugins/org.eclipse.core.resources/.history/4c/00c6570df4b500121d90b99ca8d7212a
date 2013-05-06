package grails_cms_blog

import org.compass.core.engine.SearchEngineQueryParseException

class IndexController {

	def searchableService
	
    def index() {
		def featuredArticles = Article.createCriteria().list(){
			eq ('isFeatured', true)
			order ("dateCreated", "DESC")
			maxResults(3)
		}	
		def lastedArticles = Article.createCriteria().list {
			order ("dateCreated", "DESC")
			maxResults(3)
		}
		
		[featuredArticles: featuredArticles, lastedArticles: lastedArticles]
		
	}
	def search = {
		  if (!params.q?.trim()) {
			[:]
		  }
		  try {
			[searchResult: searchableService.search(params.q, params)]
		  } catch (SearchEngineQueryParseException ex) {
			[parseException: true]
		  }
		
	}
}
