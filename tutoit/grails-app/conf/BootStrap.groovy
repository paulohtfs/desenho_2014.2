import tutoit.Login
import tutoit.User
import tutoit.UserLogin

class BootStrap {
    def springSecurityService

    def init = { servletContext ->

        def adminRole = Login.findByAuthority('ROLE_ADMIN') ?: new Login(authority: 'ROLE_ADMIN').save(failOnError: true)

        def adminUser = User.findByUsername('admin') ?: new User(
                username: 'admin',
                password: 'admin',
                enabled: true).save(failOnError: true)

        if(!adminUser.authorities.contains(adminRole)) {
            UserLogin.create(adminUser, adminRole)
        }
    }

    def destroy = {
    }

}