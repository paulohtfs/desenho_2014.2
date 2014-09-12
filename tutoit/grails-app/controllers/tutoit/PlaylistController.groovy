package tutoit

import org.springframework.dao.DataIntegrityViolationException

class PlaylistController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [playlistInstanceList: Playlist.list(params), playlistInstanceTotal: Playlist.count()]
    }

    def create() {
        [playlistInstance: new Playlist(params)]
    }

    def save() {
        def playlistInstance = new Playlist(params)
        if (!playlistInstance.save(flush: true)) {
            render(view: "create", model: [playlistInstance: playlistInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'playlist.label', default: 'Playlist'), playlistInstance.id])
        redirect(action: "show", id: playlistInstance.id)
    }

    def show(Long id) {
        def playlistInstance = Playlist.get(id)
        if (!playlistInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'playlist.label', default: 'Playlist'), id])
            redirect(action: "list")
            return
        }

        [playlistInstance: playlistInstance]
    }

    def edit(Long id) {
        def playlistInstance = Playlist.get(id)
        if (!playlistInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'playlist.label', default: 'Playlist'), id])
            redirect(action: "list")
            return
        }

        [playlistInstance: playlistInstance]
    }

    def update(Long id, Long version) {
        def playlistInstance = Playlist.get(id)
        if (!playlistInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'playlist.label', default: 'Playlist'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (playlistInstance.version > version) {
                playlistInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'playlist.label', default: 'Playlist')] as Object[],
                          "Another user has updated this Playlist while you were editing")
                render(view: "edit", model: [playlistInstance: playlistInstance])
                return
            }
        }

        playlistInstance.properties = params

        if (!playlistInstance.save(flush: true)) {
            render(view: "edit", model: [playlistInstance: playlistInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'playlist.label', default: 'Playlist'), playlistInstance.id])
        redirect(action: "show", id: playlistInstance.id)
    }

    def delete(Long id) {
        def playlistInstance = Playlist.get(id)
        if (!playlistInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'playlist.label', default: 'Playlist'), id])
            redirect(action: "list")
            return
        }

        try {
            playlistInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'playlist.label', default: 'Playlist'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'playlist.label', default: 'Playlist'), id])
            redirect(action: "show", id: id)
        }
    }
}
