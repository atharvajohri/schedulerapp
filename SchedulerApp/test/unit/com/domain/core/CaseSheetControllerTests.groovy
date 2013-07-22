package com.domain.core



import org.junit.*
import grails.test.mixin.*

@TestFor(CaseSheetController)
@Mock(CaseSheet)
class CaseSheetControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/caseSheet/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.caseSheetInstanceList.size() == 0
        assert model.caseSheetInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.caseSheetInstance != null
    }

    void testSave() {
        controller.save()

        assert model.caseSheetInstance != null
        assert view == '/caseSheet/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/caseSheet/show/1'
        assert controller.flash.message != null
        assert CaseSheet.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/caseSheet/list'

        populateValidParams(params)
        def caseSheet = new CaseSheet(params)

        assert caseSheet.save() != null

        params.id = caseSheet.id

        def model = controller.show()

        assert model.caseSheetInstance == caseSheet
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/caseSheet/list'

        populateValidParams(params)
        def caseSheet = new CaseSheet(params)

        assert caseSheet.save() != null

        params.id = caseSheet.id

        def model = controller.edit()

        assert model.caseSheetInstance == caseSheet
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/caseSheet/list'

        response.reset()

        populateValidParams(params)
        def caseSheet = new CaseSheet(params)

        assert caseSheet.save() != null

        // test invalid parameters in update
        params.id = caseSheet.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/caseSheet/edit"
        assert model.caseSheetInstance != null

        caseSheet.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/caseSheet/show/$caseSheet.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        caseSheet.clearErrors()

        populateValidParams(params)
        params.id = caseSheet.id
        params.version = -1
        controller.update()

        assert view == "/caseSheet/edit"
        assert model.caseSheetInstance != null
        assert model.caseSheetInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/caseSheet/list'

        response.reset()

        populateValidParams(params)
        def caseSheet = new CaseSheet(params)

        assert caseSheet.save() != null
        assert CaseSheet.count() == 1

        params.id = caseSheet.id

        controller.delete()

        assert CaseSheet.count() == 0
        assert CaseSheet.get(caseSheet.id) == null
        assert response.redirectedUrl == '/caseSheet/list'
    }
}
