package com.domain.core

import org.springframework.dao.DataIntegrityViolationException

class DevelopmentalSheetController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [developmentalSheetInstanceList: DevelopmentalSheet.list(params), developmentalSheetInstanceTotal: DevelopmentalSheet.count()]
    }

    def create() {
        [developmentalSheetInstance: new DevelopmentalSheet(params)]
    }

    def save() {
        def developmentalSheetInstance = new DevelopmentalSheet(params)
        if (!developmentalSheetInstance.save(flush: true)) {
            render(view: "create", model: [developmentalSheetInstance: developmentalSheetInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'developmentalSheet.label', default: 'DevelopmentalSheet'), developmentalSheetInstance.id])
        redirect(action: "show", id: developmentalSheetInstance.id)
    }

    def show(Long id) {
        def developmentalSheetInstance = DevelopmentalSheet.get(id)
        if (!developmentalSheetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'developmentalSheet.label', default: 'DevelopmentalSheet'), id])
            redirect(action: "list")
            return
        }

        [developmentalSheetInstance: developmentalSheetInstance]
    }

    def edit(Long id) {
        def developmentalSheetInstance = DevelopmentalSheet.get(id)
        if (!developmentalSheetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'developmentalSheet.label', default: 'DevelopmentalSheet'), id])
            redirect(action: "list")
            return
        }

        [developmentalSheetInstance: developmentalSheetInstance]
    }

    def update(Long id, Long version) {
        def developmentalSheetInstance = DevelopmentalSheet.get(id)
        if (!developmentalSheetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'developmentalSheet.label', default: 'DevelopmentalSheet'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (developmentalSheetInstance.version > version) {
                developmentalSheetInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'developmentalSheet.label', default: 'DevelopmentalSheet')] as Object[],
                          "Another user has updated this DevelopmentalSheet while you were editing")
                render(view: "edit", model: [developmentalSheetInstance: developmentalSheetInstance])
                return
            }
        }

        developmentalSheetInstance.properties = params

        if (!developmentalSheetInstance.save(flush: true)) {
            render(view: "edit", model: [developmentalSheetInstance: developmentalSheetInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'developmentalSheet.label', default: 'DevelopmentalSheet'), developmentalSheetInstance.id])
        redirect(action: "show", id: developmentalSheetInstance.id)
    }

    def delete(Long id) {
        def developmentalSheetInstance = DevelopmentalSheet.get(id)
        if (!developmentalSheetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'developmentalSheet.label', default: 'DevelopmentalSheet'), id])
            redirect(action: "list")
            return
        }

        try {
            developmentalSheetInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'developmentalSheet.label', default: 'DevelopmentalSheet'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'developmentalSheet.label', default: 'DevelopmentalSheet'), id])
            redirect(action: "show", id: id)
        }
    }
}
