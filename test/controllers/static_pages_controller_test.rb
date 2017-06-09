require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

	def setup
  	@base_title = "Parentheze, la nouvelle vie des parents"
  	end

	test "should get home" do
		get home_path
		assert_response :success
		assert_select "title", "Accueil | #{@base_title}"
	end

	test "Should get home by root path" do
		get root_path
		assert_response :success
		assert_select "title", "Accueil | #{@base_title}"
	end
	


end
