package grails_cms_blog.admin



import org.junit.*
import grails.test.mixin.*
import grails_cms_blog.User;

@TestFor(UserAdminController)
@Mock(User)
class UserAdminControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/userAdmin/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.userAdminInstanceList.size() == 0
        assert model.userAdminInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.userAdminInstance != null
    }

    void testSave() {
        controller.save()

        assert model.userAdminInstance != null
        assert view == '/userAdmin/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/userAdmin/show/1'
        assert controller.flash.message != null
        assert User.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/userAdmin/list'

        populateValidParams(params)
        def userAdmin = new User(params)

        assert userAdmin.save() != null

        params.id = userAdmin.id

        def model = controller.show()

        assert model.userAdminInstance == userAdmin
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/userAdmin/list'

        populateValidParams(params)
        def userAdmin = new User(params)

        assert userAdmin.save() != null

        params.id = userAdmin.id

        def model = controller.edit()

        assert model.userAdminInstance == userAdmin
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/userAdmin/list'

        response.reset()

        populateValidParams(params)
        def userAdmin = new User(params)

        assert userAdmin.save() != null

        // test invalid parameters in update
        params.id = userAdmin.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/userAdmin/edit"
        assert model.userAdminInstance != null

        userAdmin.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/userAdmin/show/$userAdmin.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        userAdmin.clearErrors()

        populateValidParams(params)
        params.id = userAdmin.id
        params.version = -1
        controller.update()

        assert view == "/userAdmin/edit"
        assert model.userAdminInstance != null
        assert model.userAdminInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/userAdmin/list'

        response.reset()

        populateValidParams(params)
        def userAdmin = new User(params)

        assert userAdmin.save() != null
        assert User.count() == 1

        params.id = userAdmin.id

        controller.delete()

        assert User.count() == 0
        assert User.get(userAdmin.id) == null
        assert response.redirectedUrl == '/userAdmin/list'
    }
}
