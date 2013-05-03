package grails_cms_blog

class Category {
	String name
	Date dateCreated
	Date lastUpdated
	
    static constraints = {
		name(blank: false)
    }
	
	public String toString(){
		name
	}
	
	static public bootstrap(){
		new Category(name: 'News').save(flush: true)
		new Category(name: 'Sports').save(flush: true)
		new Category(name: 'Music').save(flush: true)
		new Category(name: 'Technical').save(flush: true)
		new Category(name: 'Global').save(flush: true)
	}
	
}
