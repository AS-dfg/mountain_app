require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Mountain App"
  end
  
  test "should get introduction" do
    get introduction_path
    assert_response :success
    assert_select "title", "introduction | Mountain App"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Mountain App"
  end
end
