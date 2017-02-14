class User < ActiveRecord::Base
	validates :first_name, length: { maximum: 50 }, presence: true
	validates :last_name, length: { maximum: 50 }, presence: true
	validates :email, length: { maximum: 50 }, presence: true
	validates :password, length: { maximum: 16 }, presence: true
	has_secure_password
end
