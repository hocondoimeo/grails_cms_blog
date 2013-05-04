package grails_cms_blog

class CatController {

    def index() { 
		params.max = 6
		def category = Category.get(params.id)
		def articles = Article.findAllByCategory(category,params)
		[articlesInstance: articles, articlesInstanceTotal: Article.findAllByCategory(category).size()]
	}
	
	def article(){
		def article = Article.get(params.id)
		[article: article]
	}
}
