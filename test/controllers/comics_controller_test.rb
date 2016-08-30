require 'test_helper'

# Comic route testing
class ComicsControllerTest < ActionDispatch::IntegrationTest
  test 'can hit index' do
    get '/comics'

    assert_response :success
  end
end
