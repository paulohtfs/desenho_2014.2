package tutoit



import org.junit.*
import grails.test.mixin.*

@TestFor(CommentaryController)
@Mock(Commentary)
class CommentaryControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/commentary/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.commentaryInstanceList.size() == 0
        assert model.commentaryInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.commentaryInstance != null
    }

    void testSave() {
        controller.save()

        assert model.commentaryInstance != null
        assert view == '/commentary/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/commentary/show/1'
        assert controller.flash.message != null
        assert Commentary.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/commentary/list'

        populateValidParams(params)
        def commentary = new Commentary(params)

        assert commentary.save() != null

        params.id = commentary.id

        def model = controller.show()

        assert model.commentaryInstance == commentary
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/commentary/list'

        populateValidParams(params)
        def commentary = new Commentary(params)

        assert commentary.save() != null

        params.id = commentary.id

        def model = controller.edit()

        assert model.commentaryInstance == commentary
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/commentary/list'

        response.reset()

        populateValidParams(params)
        def commentary = new Commentary(params)

        assert commentary.save() != null

        // test invalid parameters in update
        params.id = commentary.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/commentary/edit"
        assert model.commentaryInstance != null

        commentary.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/commentary/show/$commentary.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        commentary.clearErrors()

        populateValidParams(params)
        params.id = commentary.id
        params.version = -1
        controller.update()

        assert view == "/commentary/edit"
        assert model.commentaryInstance != null
        assert model.commentaryInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/commentary/list'

        response.reset()

        populateValidParams(params)
        def commentary = new Commentary(params)

        assert commentary.save() != null
        assert Commentary.count() == 1

        params.id = commentary.id

        controller.delete()

        assert Commentary.count() == 0
        assert Commentary.get(commentary.id) == null
        assert response.redirectedUrl == '/commentary/list'
    }
}
