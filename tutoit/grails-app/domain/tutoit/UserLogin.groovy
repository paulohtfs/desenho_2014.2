package tutoit

import org.apache.commons.lang.builder.HashCodeBuilder

class UserLogin implements Serializable {

	User user
	Login login

	boolean equals(other) {
		if (!(other instanceof UserLogin)) {
			return false
		}

		other.user?.id == user?.id &&
			other.login?.id == login?.id
	}

	int hashCode() {
		def builder = new HashCodeBuilder()
		if (user) builder.append(user.id)
		if (login) builder.append(login.id)
		builder.toHashCode()
	}

	static UserLogin get(long userId, long loginId) {
		find 'from UserLogin where user.id=:userId and login.id=:loginId',
			[userId: userId, loginId: loginId]
	}

	static UserLogin create(User user, Login login, boolean flush = false) {
		new UserLogin(user: user, login: login).save(flush: flush, insert: true)
	}

	static boolean remove(User user, Login login, boolean flush = false) {
		UserLogin instance = UserLogin.findByUserAndLogin(user, login)
		if (!instance) {
			return false
		}

		instance.delete(flush: flush)
		true
	}

	static void removeAll(User user) {
		executeUpdate 'DELETE FROM UserLogin WHERE user=:user', [user: user]
	}

	static void removeAll(Login login) {
		executeUpdate 'DELETE FROM UserLogin WHERE login=:login', [login: login]
	}

	static mapping = {
		id composite: ['login', 'user']
		version false
	}
}
