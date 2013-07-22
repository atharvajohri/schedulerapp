package com.domain.core

import org.springframework.dao.DataIntegrityViolationException

class CaseSheetController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [caseSheetInstanceList: CaseSheet.list(params), caseSheetInstanceTotal: CaseSheet.count()]
    }

    def create() {
        [caseSheetInstance: new CaseSheet(params)]
    }

    def save() {
        def caseSheetInstance = new CaseSheet(params)
        if (!caseSheetInstance.save(flush: true)) {
            render(view: "create", model: [caseSheetInstance: caseSheetInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'caseSheet.label', default: 'CaseSheet'), caseSheetInstance.id])
        redirect(action: "show", id: caseSheetInstance.id)
    }

    def show(Long id) {
        def caseSheetInstance = CaseSheet.get(id)
        if (!caseSheetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'caseSheet.label', default: 'CaseSheet'), id])
            redirect(action: "list")
            return
        }

        [caseSheetInstance: caseSheetInstance]
    }

    def edit(Long id) {
        def caseSheetInstance = CaseSheet.get(id)
        if (!caseSheetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'caseSheet.label', default: 'CaseSheet'), id])
            redirect(action: "list")
            return
        }

        [caseSheetInstance: caseSheetInstance]
    }

    def update(Long id, Long version) {
        def caseSheetInstance = CaseSheet.get(id)
        if (!caseSheetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'caseSheet.label', default: 'CaseSheet'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (caseSheetInstance.version > version) {
                caseSheetInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'caseSheet.label', default: 'CaseSheet')] as Object[],
                          "Another user has updated this CaseSheet while you were editing")
                render(view: "edit", model: [caseSheetInstance: caseSheetInstance])
                return
            }
        }

        caseSheetInstance.properties = params

        if (!caseSheetInstance.save(flush: true)) {
            render(view: "edit", model: [caseSheetInstance: caseSheetInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'caseSheet.label', default: 'CaseSheet'), caseSheetInstance.id])
        redirect(action: "show", id: caseSheetInstance.id)
    }

    def delete(Long id) {
        def caseSheetInstance = CaseSheet.get(id)
        if (!caseSheetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'caseSheet.label', default: 'CaseSheet'), id])
            redirect(action: "list")
            return
        }

        try {
            caseSheetInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'caseSheet.label', default: 'CaseSheet'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'caseSheet.label', default: 'CaseSheet'), id])
            redirect(action: "show", id: id)
        }
    }
}
