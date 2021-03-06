package tutoit

class Video {

	int tutoits
	String videoName
	String videoLink
	Date publishDate = new Date()

    static searchable = true 
	static belongsTo = [user:User, playlist:Playlist]
	static hasMany = [commentaries:Commentary]
	static hasOne = [category:Category]

    static constraints = {
    	tutoits min:0, display:false
    	videoName blank:false
    	videoLink blank:false, url:true
    	publishDate editable: false, display: true, format: 'dd/MM/yyyy'
        commentaries display : false
        playlist nullable: true
    }

    String toString() {
    	videoName
    }

}