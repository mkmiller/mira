require 'test_helper'

# Contact route testing
class ContactControllerTest < ActionDispatch::IntegrationTest
  test 'can hit index' do
    get '/contact'

    assert_response :success
  end
end
