require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Chatterzilla"
  end
end