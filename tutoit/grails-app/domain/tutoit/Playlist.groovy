package tutoit

class Playlist {

	String playlistName
	Date playlistDate = new Date()

	static belongsTo = [user:User]
	static hasMany = [videos:Video]

    static constraints = {
    	playlistName blank:false
    	videos nullable:true
    }

    String toString() {
    	playlistName
    }
}
