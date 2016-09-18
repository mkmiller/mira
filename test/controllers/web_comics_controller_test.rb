require 'test_helper'

# Web comics route testing
class WebComicsControllerTest < ActionDispatch::IntegrationTest
  test 'can hit index' do
    get '/web_comics'

    assert_response :success
  end

  test 'can hit show' do
    get '/web_comics/web-comic'

    assert_response :success
  end
end
