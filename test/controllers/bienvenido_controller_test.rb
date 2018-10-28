require 'test_helper'

class BienvenidoControllerTest < ActionDispatch::IntegrationTest
	def setup
		@title = "MediNota"
	end

	test "should get index" do
		get bienvenido_index_url
		assert_response :success
		assert_select "title", "Inicio | #{@title}"
	end

	test "should get root" do
		get root_path
		assert_response :success
		assert_select "title", "Inicio | #{@title}"
	end

end
