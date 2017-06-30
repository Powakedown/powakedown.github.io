require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  def setup
    @base_title = "Parentheze, la nouvelle vie des parents"
  end

  test "should get root_path" do
    get root_path
    assert_response :success
    assert_select "title", "Accueil | #{@base_title}"
  end

  test "should get home" do
    get home_url
    assert_response :success
    assert_select "title", "Accueil | #{@base_title}"
  end
end
