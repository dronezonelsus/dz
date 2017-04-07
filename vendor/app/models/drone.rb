class Drone < ActiveRecord::Base
	ActiveRecord::Base.include_root_in_json = false
	def as_json(options={})
  		{ :libro => { :created_at => created_at } }
	end
end
