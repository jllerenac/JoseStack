require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get questions" do
    get pages_questions_url
    assert_response :success
  end

  test "should get summary" do
    get pages_summary_url
    assert_response :success
  end

end
