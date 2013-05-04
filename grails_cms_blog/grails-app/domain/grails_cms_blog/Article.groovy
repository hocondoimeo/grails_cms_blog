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
	Boolean isFeatured = false
	
	static belongsTo = [author:User, category:Category]
	
    static constraints = {
		title(blank:false, nullable: false, size:3..100, matches:"[a-zA-Z1-9_ ]+")
		desc(blank:false, nullable: false, size:3..500)
		content(blank:false, nullable: false, size:3..1000)
		image(blank:true, nullable:true)
		
    }
	
	public String toString(){
		title
	}
	
	static public bootstrap(){
		new Article(title: 'Technical News',
					desc: 'IT desc',
					content: 'Predefined names by Grails will be filled automatically',
					category: Category.findByName('Technical'),
					author: User.findByName('author'),
					image: 'images.jpg',
					isFeatured: false).save(flush: true)
		
		new Article(title: 'A Million Dollars A Week',
					desc: 'That’s what Big Pharma reports spending on educational events in Australia.',
					content: 'That’s what Big Pharma reports spending on educational events in Australia. The Global Mail’s new database exposes the murky relationships between drug-makers and doctors.</br>Content',
					category: Category.findByName('Global'),
					author: User.findByName('author'),
					image: 'article1.jpg',
					isFeatured: true).save(flush: true)
		
		new Article(title: 'Dr Bad Pharma Takes Us Behind Closed Doors',
					desc: 'Medicine is broken, says Bad Pharma author Ben Goldacre. ',
					content: 'Medicine is broken, says Bad Pharma author Ben Goldacre. In this audio interview, he talks about giving the public tools to hold the medical industry to account. Content',
					category: Category.findByName('Global'),
					author: User.findByName('author'),
					image: 'article2.jpg',
					isFeatured: true).save(flush: true)
		
		new Article(title: 'A Blood Curdling Path To Market',
					desc: 'A Global Mail investigation charts the troubled path to market of Pradaxa',
					content: 'A Global Mail investigation charts the troubled path to market of Pradaxa, the controversial stroke prevention drug, as its PBS listing hangs in the balance.',
					category: Category.findByName('Global'),
					author: User.findByName('author'),
					image: 'article3.jpg',
					isFeatured: false).save(flush: true)
		
		new Article(title: 'Villawood Contamination Police Threaten Boycott',
					desc: 'Following revelations that easily spread asbestos remained unaddressed at Villawood',
					content: 'Following revelations that easily spread asbestos remained unaddressed at Villawood, the NSW Police Association is threatening to ban officers from the controversial detention centre',
					category: Category.findByName('Global'),
					author: User.findByName('admin'),
					image: 'article4.jpg',
					isFeatured: false).save(flush: true)
		
		new Article(title: 'Oranges and Lemons The Royal Houses of Europe',
					desc: 'Europe still maintains a dozen monarchies',
					content: 'Europe still maintains a dozen monarchies. As a new king settles into the Dutch throne, can the cash-strapped continent afford to support these expensive spongers any longer?',
					category: Category.findByName('Global'),
					author: User.findByName('admin'),
					image: 'article5.jpg',
					isFeatured: true).save(flush: true)
		
		new Article(title: 'Toxic Villawood Government Warned Of Continuing Asbestos Risk',
					desc: 'Reports of dangerous asbestos contamination,',
					content: "Reports of dangerous asbestos contamination, revealed under Freedom of Information, show hazards have been left unaddressed at Villawood, the nation’s largest mainland detention centre",
					category: Category.findByName('News'),
					author: User.findByName('admin'),
					image: 'article6.jpg',
					isFeatured: false).save(flush: true)
	}
}
