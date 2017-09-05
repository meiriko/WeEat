require 'test_helper'

class WeEatControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get we_eat_index_url
    assert_response :success
  end

end
