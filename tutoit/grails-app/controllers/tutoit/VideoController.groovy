package tutoit

import org.springframework.dao.DataIntegrityViolationException

class VideoController {


    def springSecurityService
    static allowedMethods = [save: "POST", update: "POST", delete: "POST", show: "GET"]

    def index() {
        redirect(action: "show", params: params)
    }

    def save() {
        new Video(params)
        if (!videoInstance.save(flush: true)) {
            render(view: "create", model: [videoInstance: videoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'video.label', default: 'Video'), videoInstance.id])
        redirect(action: "show", id: videoInstance.id)
    }

    def list() {
        def currentUser = springSecurityService.currentUser
        [currentUser: currentUser]
    }

    // Using strategy in show video
    def listUserVideos() {
        def currentUser = springSecurityService.currentUser
        def showingVideo = new ShowingVideo()
        def jsLinks = []
        def usersVideosID = currentUser.videos

        for (video in usersVideosID) {
            def videoLink = showingVideo.showVideo(video.id,ShowingVideo.ON_JS)
            usersVideosID.add(video)
        }

        [jsLinks: jsLinks]
    }

    def create() {
        def currentUser = springSecurityService.currentUser
        [videoInstance: new Video(params), currentUser: currentUser]
    }

    // Showing the video
    def show(Long id) {
        def showingVideo = new ShowingVideo()
        def videoInfo = showingVideo.showVideo(id,ShowingVideo.ON_PAGE)

        [video: videoInfo]
    }

    def edit(Long id) {
        def videoInstance = Video.get(id)
        if (!videoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'video.label', default: 'Video'), id])
            redirect(action: "listUserVideos")
            return
        }

        [videoInstance: videoInstance]
    }

    def update(Long id, Long version) {
        def videoInstance = Video.get(id)
        if (!videoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'video.label', default: 'Video'), id])
            redirect(action: "listUserVideos")
            return
        }

        if (version != null) {
            if (videoInstance.version > version) {
                videoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'video.label', default: 'Video')] as Object[],
                          "Another user has updated this Video while you were editing")
                render(view: "edit", model: [videoInstance: videoInstance])
                return
            }
        }

        videoInstance.properties = params

        if (!videoInstance.save(flush: true)) {
            render(view: "edit", model: [videoInstance: videoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'video.label', default: 'Video'), videoInstance.id])
        redirect(action: "show", id: videoInstance.id)
    }

    def delete(Long id) {
        def videoInstance = Video.get(id)
        if (!videoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'video.label', default: 'Video'), id])
            redirect(action: "listUserVideos")
            return
        }

        try {
            videoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'video.label', default: 'Video'), id])
            redirect(action: "listUserVideos")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'video.label', default: 'Video'), id])
            redirect(action: "show", id: id)
        }
    }
}
