require "test_helper"

class DishesControllerTest < ActionDispatch::IntegrationTest
  test "should get main_page" do
    get dishes_main_page_url
    assert_response :success
  end
end
