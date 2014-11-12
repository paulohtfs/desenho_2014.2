package tutoit

class Category {

	String categoryName
	String categoryDescription
	List subCategories
    boolean eSubcategoria
	

	static hasMany = [videos:Video, subCategories:Category]

    static constraints = {
    	categoryName blank:false
    	videos nullable:true
    	subCategories nullable:true
    }

    String toString() {
    	categoryName
    }
}
