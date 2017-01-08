class User < ActiveRecord::Base
	validates :User, length: { maximum: 10 }, 
					 presence: true
	validates :Password, length: { maximum: 15 },
					 	 presence: true
end
