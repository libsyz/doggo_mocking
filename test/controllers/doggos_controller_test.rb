require "test_helper"

class DoggosControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get doggos_show_url
    assert_response :success
  end
end
