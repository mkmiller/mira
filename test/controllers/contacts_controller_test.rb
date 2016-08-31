require 'test_helper'

# Contact route testing
class ContactsControllerTest < ActionDispatch::IntegrationTest
  test 'can hit show' do
    get '/contact'

    assert_response :success
  end
end
