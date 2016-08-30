require 'test_helper'

# Testing for home
class HomeControllerTest < ActionDispatch::IntegrationTest
  test 'can hit home' do
    get '/'

    assert_response :ok
  end
end
