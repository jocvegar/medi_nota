require 'test_helper'

class UserTest < ActiveSupport::TestCase
	test "shold be valid user" do
		user = build(:user)
		assert user.valid?
	end

	test "shold be not be valid without required fields" do
		user = build(:user, primer_nombre: "")
		assert user.invalid?
		assert_equal(["Primer nombre no puede estar vacio."], user.errors.full_messages, "Custom validations" )
		user = build(:user, primer_apellido: "")
		assert user.invalid?
		assert_equal(["Primer apellido no puede estar vacio."], user.errors.full_messages, "Custom validations" )
		user = build(:user, email: "")
		assert user.invalid?
		assert_equal(["Email is invalid", "Email can't be blank", "Email no puede estar vacio."], user.errors.full_messages, "Custom validations" )
	end

	test "shold be not be valid emil" do
		user = build(:user, email: "hola")
		assert user.invalid?
		assert_equal(["Email is invalid"], user.errors.full_messages, "Custom validations" )
	end
end
