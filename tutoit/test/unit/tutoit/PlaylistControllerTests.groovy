package tutoit



import org.junit.*
import grails.test.mixin.*

@TestFor(PlaylistController)
@Mock(Playlist)
class PlaylistControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/playlist/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.playlistInstanceList.size() == 0
        assert model.playlistInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.playlistInstance != null
    }

    void testSave() {
        controller.save()

        assert model.playlistInstance != null
        assert view == '/playlist/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/playlist/show/1'
        assert controller.flash.message != null
        assert Playlist.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/playlist/list'

        populateValidParams(params)
        def playlist = new Playlist(params)

        assert playlist.save() != null

        params.id = playlist.id

        def model = controller.show()

        assert model.playlistInstance == playlist
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/playlist/list'

        populateValidParams(params)
        def playlist = new Playlist(params)

        assert playlist.save() != null

        params.id = playlist.id

        def model = controller.edit()

        assert model.playlistInstance == playlist
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/playlist/list'

        response.reset()

        populateValidParams(params)
        def playlist = new Playlist(params)

        assert playlist.save() != null

        // test invalid parameters in update
        params.id = playlist.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/playlist/edit"
        assert model.playlistInstance != null

        playlist.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/playlist/show/$playlist.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        playlist.clearErrors()

        populateValidParams(params)
        params.id = playlist.id
        params.version = -1
        controller.update()

        assert view == "/playlist/edit"
        assert model.playlistInstance != null
        assert model.playlistInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/playlist/list'

        response.reset()

        populateValidParams(params)
        def playlist = new Playlist(params)

        assert playlist.save() != null
        assert Playlist.count() == 1

        params.id = playlist.id

        controller.delete()

        assert Playlist.count() == 0
        assert Playlist.get(playlist.id) == null
        assert response.redirectedUrl == '/playlist/list'
    }
}
