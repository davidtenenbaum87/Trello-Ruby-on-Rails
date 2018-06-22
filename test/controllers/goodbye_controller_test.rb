require 'test_helper'

class GoodbyeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get goodbye_index_url
    assert_response :success
  end

end
