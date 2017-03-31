require 'test_helper'

class UserTest < ActiveSupport::TestCase
	def setup
    	@user = User.new(first_name: "Drone", last_name: "Zone", email: "drone@zone.com", password: "foobar", password_confirmation: "foobar")
	end

	test "should be valid" do
    	assert @user.valid?
	end 
	test "First Name should be present" do
    	@user.first_name = "    "
    	assert_not @user.valid?
	end
	test "Last Name should be present" do
    	@user.last_name = "    "
    	assert_not @user.valid?
	end
	test "Email should be present" do
    	@user.email = "    "
    	assert_not @user.valid?
	end
	test "Password should be present" do
    	@user.password = "    "
    	assert_not @user.valid?
	end
end