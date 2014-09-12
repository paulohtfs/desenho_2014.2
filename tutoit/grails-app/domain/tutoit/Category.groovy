package tutoit

class Category {

	String categoryName

	static hasMany = [videos:Video]

    static constraints = {
    	categoryName blank:false
    	videos nullable:true
    }

    String toString() {
    	categoryName
    }
}
