package grails_cms_blog

class Article {
	static searchable = { 
		only = ['title', 'desc', 'content', 'dateCreated', 'lastUpdated'] 
		content: spellCheck 'include' 
	}
	String title
	String desc
	String content
	String image
	Date dateCreated // Predefined names by Grails will be filled automatically
	Date lastUpdated // Predefined names by Grails will be filled automatically
	Category category
	User author
	
	static belongsTo = [author:User, category:Category]
	
    static constraints = {
		title(blank:false, nullable: false, size:3..30, matches:"[a-zA-Z1-9_ ]+")
		desc(blank:false, nullable: false, size:3..100)
		content(blank:false, nullable: false, size:3..1000)
		image(blank:true, nullable:true)
    }
	
	public String toString(){
		title
	}
	
	static public bootstrap(){
		new Article(title: 'Technical News', desc: 'IT desc', content: 'Predefined names by Grails will be filled automatically', category: new Category(name: 'Global').save(flush: true), author: new User(name:'author', email:'author@kiss-concept.com', password:'123456', passwordHashed: 'fEqNCco3Yq9h5ZUglD3CZJT4lBs=', confirm: '123456', role: "author").save(flush: true), image: 'images.jpg').save(flush: true)
	}
}
