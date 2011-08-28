require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get consult" do
    get :consult
    assert_response :success
  end

  test "should get report" do
    get :report
    assert_response :success
  end

end
