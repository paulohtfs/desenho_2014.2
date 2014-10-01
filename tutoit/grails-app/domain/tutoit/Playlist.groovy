package tutoit

class Playlist {

	String playlistName
	Date playlistDate = new Date()

    static searchable = true 
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
