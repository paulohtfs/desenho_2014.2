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

        // Creating inital categories

        tutoit.Category.findByCategoryName('Tecnologia da informação') ?: new tutoit.Category(
                id: 1,
                categoryName: 'Tecnologia da informação',
                categoryDescription: 'Está categoria refere-se a todos os videos relacionados a informática').save(failOnError: true)


        tutoit.Category.findByCategoryName('Gastronomia') ?: new tutoit.Category(
                id: 2,
                categoryName: 'Gastronomia',
                categoryDescription: 'Está categoria contém videos relacionados as mais váriadas receitas').save(failOnError: true)

        tutoit.Category.findByCategoryName('Beleza') ?: new tutoit.Category(
                id: 3,
                categoryName: 'Beleza',
                categoryDescription: 'Está categoria contém videos referentes a maquiagem, corte de cabelo entre outros').save(failOnError: true)

        tutoit.Category.findByCategoryName('Fitness') ?: new tutoit.Category(
                id: 4,
                categoryName: 'Fitness',
                categoryDescription: 'Contém videos tutoriais de exercícios físicos que podem ser praticados em casa').save(failOnError: true)

        tutoit.Category.findByCategoryName('Saúde e bem-estar') ?: new tutoit.Category(
                id: 5,
                categoryName: 'Saúde e bem-estar',
                categoryDescription: 'Contém videos tutoriais referentes a práticas alimentares e dicas simples para ter uma vida saudavel').save(failOnError: true)

        tutoit.Category.findByCategoryName('Marketing') ?: new tutoit.Category(
                id: 6,
                categoryName: 'Marketing',
                categoryDescription: 'Está categoria contém videos relacionados a dicas de Marketing').save(failOnError: true)

        tutoit.Category.findByCategoryName('Serviços Gerais') ?: new tutoit.Category(
                id: 7,
                categoryName: 'Serviços Gerais',
                categoryDescription: 'Está categoria contém videos equivalentes a um marido de aluguel').save(failOnError: true)

        tutoit.Category.findByCategoryName('Fotografia') ?: new tutoit.Category(
                id: 8,
                categoryName: 'Fotografia',
                categoryDescription: 'Está categoria contém videos com tutoriais ensinando técnicas de fotográfia').save(failOnError: true)


        tutoit.Category.findByCategoryName('Idiomas') ?: new tutoit.Category(
                id: 9,
                categoryName: 'Idiomas',
                categoryDescription: 'Está categoria contém videos dos mais variádos idiomas').save(failOnError: true)


        if(!adminUser.authorities.contains(adminRole)) {
            UserLogin.create(adminUser, adminRole)
        }
    }

    def destroy = {
    }

}