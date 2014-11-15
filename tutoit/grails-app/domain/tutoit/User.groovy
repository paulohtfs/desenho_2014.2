package tutoit

class User {

	transient springSecurityService

    // User Login Attributes
	String username
	String password

    // User Domain Attributes
    String userLastName
    String userEmail
    String userAge
    String userCountry
    String userState

    // Spring Security Usage
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	static hasMany = [videos:Video, playlist:Playlist]

	static constraints = {
		username blank: false, unique: true
		password blank: false

        userLastName nullable: true
        userEmail nullable: true
        userAge nullable: true
        userCountry nullable: true
        userState nullable: true

		videos nullable:true
        playlist nullable:true
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Login> getAuthorities() {
		UserLogin.findAllByUser(this).collect { it.login } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}

	String toString(){
    	username
    }
}
