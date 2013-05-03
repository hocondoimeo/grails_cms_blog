package grails_cms_blog

class Subscriber {

	String email
	
	
	Date dateCreated
	Date lastUpdated
    static constraints = {
		email (email: true, blank: false, unique: true)
    }
	
	public String toString(){
		email
	}
	
	static public bootstrap(){
		new Subscriber(email: 'thu.nguye1n@kiss-concept.com').save(flush: true)
		new Subscriber(email: 'duy.ngo1@kiss-concept.com').save(flush: true)
		new Subscriber(email: 'thu1.nguyen@kiss-concept.com').save(flush: true)
		new Subscriber(email: 'thu2.nguyen@kiss-concept.com').save(flush: true)
		new Subscriber(email: 'thu3.nguyen@kiss-concept.com').save(flush: true)
		new Subscriber(email: 'thu4.nguyen@kiss-concept.com').save(flush: true)
	}
}
