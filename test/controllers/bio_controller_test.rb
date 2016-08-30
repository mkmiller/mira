require 'test_helper'

# Bio route testing
class BioControllerTest < ActionDispatch::IntegrationTest
  test 'can hit index' do
    get '/bio'

    assert_response :success
  end
end
