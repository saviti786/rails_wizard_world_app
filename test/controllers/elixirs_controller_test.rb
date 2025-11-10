require "test_helper"

class ElixirsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get elixirs_index_url
    assert_response :success
  end

  test "should get show" do
    get elixirs_show_url
    assert_response :success
  end
end
