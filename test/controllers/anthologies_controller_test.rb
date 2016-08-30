require 'test_helper'

# Anthologies route testing
class AnthologiesControllerTest < ActionDispatch::IntegrationTest
  test 'can hit index' do
    get '/anthologies'

    assert_response :success
  end
end
