require 'test_helper'

# Bio route testing
class BiosControllerTest < ActionDispatch::IntegrationTest
  test 'can hit show' do
    get '/bio'

    assert_response :success
  end
end
