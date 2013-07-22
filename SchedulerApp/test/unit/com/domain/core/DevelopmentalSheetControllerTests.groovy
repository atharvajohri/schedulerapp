package com.domain.core



import org.junit.*
import grails.test.mixin.*

@TestFor(DevelopmentalSheetController)
@Mock(DevelopmentalSheet)
class DevelopmentalSheetControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/developmentalSheet/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.developmentalSheetInstanceList.size() == 0
        assert model.developmentalSheetInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.developmentalSheetInstance != null
    }

    void testSave() {
        controller.save()

        assert model.developmentalSheetInstance != null
        assert view == '/developmentalSheet/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/developmentalSheet/show/1'
        assert controller.flash.message != null
        assert DevelopmentalSheet.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/developmentalSheet/list'

        populateValidParams(params)
        def developmentalSheet = new DevelopmentalSheet(params)

        assert developmentalSheet.save() != null

        params.id = developmentalSheet.id

        def model = controller.show()

        assert model.developmentalSheetInstance == developmentalSheet
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/developmentalSheet/list'

        populateValidParams(params)
        def developmentalSheet = new DevelopmentalSheet(params)

        assert developmentalSheet.save() != null

        params.id = developmentalSheet.id

        def model = controller.edit()

        assert model.developmentalSheetInstance == developmentalSheet
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/developmentalSheet/list'

        response.reset()

        populateValidParams(params)
        def developmentalSheet = new DevelopmentalSheet(params)

        assert developmentalSheet.save() != null

        // test invalid parameters in update
        params.id = developmentalSheet.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/developmentalSheet/edit"
        assert model.developmentalSheetInstance != null

        developmentalSheet.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/developmentalSheet/show/$developmentalSheet.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        developmentalSheet.clearErrors()

        populateValidParams(params)
        params.id = developmentalSheet.id
        params.version = -1
        controller.update()

        assert view == "/developmentalSheet/edit"
        assert model.developmentalSheetInstance != null
        assert model.developmentalSheetInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/developmentalSheet/list'

        response.reset()

        populateValidParams(params)
        def developmentalSheet = new DevelopmentalSheet(params)

        assert developmentalSheet.save() != null
        assert DevelopmentalSheet.count() == 1

        params.id = developmentalSheet.id

        controller.delete()

        assert DevelopmentalSheet.count() == 0
        assert DevelopmentalSheet.get(developmentalSheet.id) == null
        assert response.redirectedUrl == '/developmentalSheet/list'
    }
}
