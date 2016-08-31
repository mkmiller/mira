require 'test_helper'

# Anthologies route testing
class AnthologiesControllerTest < ActionDispatch::IntegrationTest
  test 'can hit index' do
    get '/anthologies'

    assert_response :success
  end

  test 'can hit show' do
    get '/anthologies/1'

    assert_response :success
  end
end
