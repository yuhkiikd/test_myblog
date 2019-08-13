require 'test_helper'

class TestBlogsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get test_blogs_index_url
    assert_response :success
  end

end
