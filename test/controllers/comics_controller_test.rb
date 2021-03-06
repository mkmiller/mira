require 'test_helper'

# Comic route testing
class ComicsControllerTest < ActionDispatch::IntegrationTest
  test 'can hit index' do
    get '/comics'

    assert_response :success
  end

  test 'can hit show' do
    get '/comics/split'

    assert_response :success
  end
end
