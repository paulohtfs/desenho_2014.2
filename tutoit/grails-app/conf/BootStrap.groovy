import tutoit.User
import tutoit.Login
import tutoit.UserLogin

class BootStrap {
    def init = { servletContext ->
        def userRole = Login.findByAuthority('ROLE_USER') ?: new Login(authority: 'ROLE_USER').save(failOnError: true)
        def adminRole = Login.findByAuthority('ROLE_ADMIN') ?: new Login(authority: 'ROLE_ADMIN').save(failOnError: true)

        def adminUser = User.findByUsername('admin') ?: new User(
                username: 'admin',
                password: springSecurityService.encodePassword('admin'),
                enabled: true).save(failOnError: true)

        if (!adminUser.authorities.contains(adminRole)) {
            UserLogin.create adminUser, adminRole
        }
    }

    def destroy = {
    }

}