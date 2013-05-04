package grails_cms_blog

class User {
	String name
	String email
	String password
	String confirm
	String passwordHashed
	Date dateCreated // Predefined names by Grails will be filled automatically
	Date lastUpdated // Predefined names by Grails will be filled automatically
	String role = "author"
	
	static hasMany = [articles: Article]
	 
    static constraints = {
		name(blank:false, nullable: false, size:3..30, matches:"[a-zA-Z1-9_ ]+")
		email(email:true, blank:false, nullable: false, unique:true)
		password(password: true, blank:false, nullable: false, validator:{ val, obj ->
			if(obj.password != obj.confirm)
				return 'user.password.dontmatch'
		})
		confirm(password: true, blank:false, nullable: false)
		role(inList: ["admin", "author"])
    }
	
	String toString(){
		return name;
	}
	
	static public bootstrap(){
		new User(name:'admin', email:'admin@kiss-concept.com', password:'123456', passwordHashed: 'fEqNCco3Yq9h5ZUglD3CZJT4lBs=', confirm: '123456',role: "admin").save(flush: true)
		new User(name:'author', email:'author@kiss-concept.com', password:'123456', passwordHashed: 'fEqNCco3Yq9h5ZUglD3CZJT4lBs=', confirm: '123456',role: "author").save(flush: true)
		
	}
}
