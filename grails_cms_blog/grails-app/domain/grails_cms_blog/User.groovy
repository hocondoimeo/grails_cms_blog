package grails_cms_blog

class User {
	String name
	String email
	String password
	Date dateCreated // Predefined names by Grails will be filled automatically
	Date lastUpdated // Predefined names by Grails will be filled automatically
	
	static belongTo = [article: Article]
	 
    static constraints = {
		name(blank:false, nullable: false, size:3..30, matches:"[a-zA-Z1-9_ ]+")
		email(email:true, blank:false, nullable: false)
		password(password: true, blank:false, nullable: false)
    }
	
	String toString(){
		return name;
	}
}
