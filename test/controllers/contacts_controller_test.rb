require 'test_helper'

# Contact route testing
class ContactsControllerTest < ActionDispatch::IntegrationTest
  test 'can hit new' do
    get '/contacts/new'

    assert_response :success
  end
end
