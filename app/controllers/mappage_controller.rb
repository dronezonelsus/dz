class MappageController < ApplicationController
  def index
  	@drones = Drone.all
    #@lat = 29.7604  
    #@lon = -93.53
    @hash = Gmaps4rails.build_markers(@drones) do |drone, marker|
      marker.lat drone.latitude
      marker.lng drone.longitude
      marker.infowindow drone.droneName
      marker.picture({
        :url => ActionController::Base.helpers.asset_path('DroneMap.png'),
        :width => 60,
        :height => 60
      })
    end
  end
end
