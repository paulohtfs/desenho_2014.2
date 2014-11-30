import tutoit.Login
import tutoit.User
import tutoit.UserLogin

class BootStrap {
    def springSecurityService

    def init = { servletContext ->

        def adminRole = Login.findByAuthority('ROLE_ADMIN') ?: new Login(authority: 'ROLE_ADMIN').save(failOnError: true)
        def userRole = Login.findByAuthority('IS_AUTHENTICATED_FULLY') ?: new Login(authority: 'IS_AUTHENTICATED_FULLY').save(failOnError: true)

        def adminUser = User.findByUsername('admin') ?: new User(
                id: 1,
                username: 'admin',
                password: 'admin',
                enabled: true).save(failOnError: true)

        if(!adminUser.authorities.contains(adminRole)) {
            UserLogin.create(adminUser, adminRole)
        }

        def firstUser = User.findByUsername('paulohtfs') ?: new User(
                id: 2,
                username: 'paulohtfs',
                password: '123456',
                enabled: true).save(failOnError: true)

        if(!firstUser.authorities.contains(userRole)) {
            UserLogin.create(firstUser, userRole)
        }

        def secondUser = User.findByUsername('marialuciene') ?: new User(
                id: 3,
                username: 'marialuciene',
                password: '123456',
                enabled: true).save(failOnError: true)

        if(!secondUser.authorities.contains(userRole)) {
            UserLogin.create(secondUser, userRole)
        }

        def thirdUser = User.findByUsername('maxwelloliveira') ?: new User(
                id: 4,
                username: 'maxwelloliveira',
                password: '123456',
                enabled: true).save(failOnError: true)

        if(!thirdUser.authorities.contains(userRole)) {
            UserLogin.create(thirdUser, userRole)
        }

        def forthUser = User.findByUsername('eulercarvalho') ?: new User(
                id: 5,
                username: 'eulercarvalho',
                password: '123456',
                enabled: true).save(failOnError: true)

        if(!forthUser.authorities.contains(userRole)) {
            UserLogin.create(forthUser, userRole)
        }

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


        // Initial Videos for firstUser
        new tutoit.Video(
                id: 2,
                category: tutoit.Category.get(1),
                videoName: 'Groovy & Grails Tutorial - Part 1 - What is Groovy',
                videoLink: 'https://www.youtube.com/watch?v=0MeVyqnDokk',
                user: User.get(2)
        ).save(failOnError: true)

        new tutoit.Video(
                id: 2,
                category: tutoit.Category.get(1),
                videoName: 'Ruby On Rails 4 - Scaffolding and twitter bootstrap',
                videoLink: 'https://www.youtube.com/watch?v=Zo2vav3dYnY',
                user: User.get(2)
        ).save(failOnError: true)

        // Initial Videos for secondUser
        new tutoit.Video(
                id: 3,
                category: tutoit.Category.get(1),
                videoName: '[TUTORIAL] Conectar site PHP ao banco de dados MYSQL',
                videoLink: 'https://www.youtube.com/watch?v=PBTPhu7mU1o',
                user: User.get(3)
        ).save(failOnError: true)

        new tutoit.Video(
                id: 3,
                category: tutoit.Category.get(1),
                videoName: 'Python Beginner Tutorial 1 (For Absolute Beginners)',
                videoLink: 'https://www.youtube.com/watch?v=cpPG0bKHYKc',
                user: User.get(3)
        ).save(failOnError: true)

        // Intial Videos for thirdUser
        new tutoit.Video(
                id: 4,
                category: tutoit.Category.get(1),
                videoName: 'Strategy Design Pattern',
                videoLink: 'https://www.youtube.com/watch?v=-NCgRD9-C6o',
                user: User.get(4)
        ).save(failOnError: true)

        new tutoit.Video(
                id: 4,
                category: tutoit.Category.get(1),
                videoName: 'Composite Design Pattern',
                videoLink: 'https://www.youtube.com/watch?v=2HUnoKyC9l0',
                user: User.get(4)
        ).save(failOnError: true)

        // Intial Videos for forthUser
        new tutoit.Video(
                id: 5,
                category: tutoit.Category.get(1),
                videoName: 'C++ Beginners Tutorial 1 (For Absolute Beginners) - With Zoom',
                videoLink: 'https://www.youtube.com/watch?v=NGSBPcDuB5k',
                user: User.get(5)
        ).save(failOnError: true)

        new tutoit.Video(
                id: 5,
                category: tutoit.Category.get(1),
                videoName: 'Scrum',
                videoLink: 'https://www.youtube.com/watch?v=OOdAwUXmL3E',
                user: User.get(5)
        ).save(failOnError: true)

    }

    def destroy = {
    }

}