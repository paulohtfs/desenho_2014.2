package tutoit

class User {

	String userName
	String userEmail
	String userPassword

	static hasMany = [videos:Video, playlist:Playlist]

    static constraints = {
    	userName blank:false, maxSize:30
    	userEmail email:true
    	userPassword password:true

    	videos nullable:true
        playlist nullable:true
    }

    String toString(){
    	userName
    }
}
