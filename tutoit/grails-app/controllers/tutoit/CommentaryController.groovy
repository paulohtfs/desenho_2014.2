package tutoit

import org.springframework.dao.DataIntegrityViolationException

class CommentaryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [commentaryInstanceList: Commentary.list(params), commentaryInstanceTotal: Commentary.count()]
    }

    def create() {
        [commentaryInstance: new Commentary(params)]
    }

    def save() {
        def commentaryInstance = new Commentary(params)
        if (!commentaryInstance.save(flush: true)) {
            render(view: "create", model: [commentaryInstance: commentaryInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'commentary.label', default: 'Commentary'), commentaryInstance.id])
        redirect(action: "show", id: commentaryInstance.id)
    }

    def show(Long id) {
        def commentaryInstance = Commentary.get(id)
        if (!commentaryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'commentary.label', default: 'Commentary'), id])
            redirect(action: "list")
            return
        }

        [commentaryInstance: commentaryInstance]
    }

    def edit(Long id) {
        def commentaryInstance = Commentary.get(id)
        if (!commentaryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'commentary.label', default: 'Commentary'), id])
            redirect(action: "list")
            return
        }

        [commentaryInstance: commentaryInstance]
    }

    def update(Long id, Long version) {
        def commentaryInstance = Commentary.get(id)
        if (!commentaryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'commentary.label', default: 'Commentary'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (commentaryInstance.version > version) {
                commentaryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'commentary.label', default: 'Commentary')] as Object[],
                          "Another user has updated this Commentary while you were editing")
                render(view: "edit", model: [commentaryInstance: commentaryInstance])
                return
            }
        }

        commentaryInstance.properties = params

        if (!commentaryInstance.save(flush: true)) {
            render(view: "edit", model: [commentaryInstance: commentaryInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'commentary.label', default: 'Commentary'), commentaryInstance.id])
        redirect(action: "show", id: commentaryInstance.id)
    }

    def delete(Long id) {
        def commentaryInstance = Commentary.get(id)
        if (!commentaryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'commentary.label', default: 'Commentary'), id])
            redirect(action: "list")
            return
        }

        try {
            commentaryInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'commentary.label', default: 'Commentary'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'commentary.label', default: 'Commentary'), id])
            redirect(action: "show", id: id)
        }
    }
}
