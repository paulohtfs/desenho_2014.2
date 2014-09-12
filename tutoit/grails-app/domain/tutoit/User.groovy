package tutoit

class User {

	String userName
	String userEmail
	String userPassword

	static hasMany = [videos:Video]
	//static hasMany = [commentaries:Commentary]

    static constraints = {
    	userName blank:false, maxSize:30
    	userEmail email:true
    	userPassword password:true

    	videos nullable:true
    }

    String toString(){
    	userName
    }
}
