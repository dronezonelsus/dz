class Drone < ActiveRecord::Base
	ActiveRecord::Base.include_root_in_json = false
	def as_json(options={})
  		{ :libro => { :created_at => created_at } }
	end
	validates :drone_number, presence: true
	validates :drone_name, presence: true
	validates :departure, presence: true
	validates :arrival, presence: true
	validates :latitude, presence: true
	validates :longitude, presence: true
end
