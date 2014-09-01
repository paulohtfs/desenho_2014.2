package tutoit

class User {

	String name
	String email
	String password


    static constraints = {
    	name(blank:false, maxSize: 30)
    	email(email: true)
    	password(password: true)
    }
}
