class MappageController < ApplicationController
 
  def index
    @drones = Drone.all.reload
    respond_to do |format|
      format.html {}
      format.json {
    	  #@drones = Drone.all.reload
        #@lat = 29.7604  
        #@lon = -93.53
        @hash = Gmaps4rails.build_markers(@drones) do |drone, marker| 
          marker.lat drone.reload.latitude
          marker.lng drone.reload.longitude
          marker.infowindow drone.reload.drone_name
          marker.picture({
            :url => ActionController::Base.helpers.asset_path('DroneMap.png'),
            :width => 60,
            :height => 60
          })
        end
        puts "This is hash: " + @hash.to_s
        render json: @hash
      }
    end
  end
 
  def singledronepage
    flash.keep
    @myhash = Hash.new
    @myhash[:clickedDrone] = params[:string_marker] 
    @postedHash = params[:string_marker]
   
    respond_to do |format|
      format.json {
        @parsed_drone = JSON.parse(@postedHash.to_json)
        @final_drone = JSON.parse(@parsed_drone['0'].to_json)

        @secondHash = Gmaps4rails.build_markers(@final_drone) do |drone, marker| 
          drone = JSON.parse(@parsed_drone['0'].to_json)
          marker.lat drone['lat']
          marker.lng drone['lng']
          marker.infowindow drone['infowindow']
          marker.picture({
            :url => ActionController::Base.helpers.asset_path('DroneMap.png'),
            :width => 60,
            :height => 60
          })
        end

        flash[:notice] = @secondHash[0]
        render json: flash[:notice]
      }
      format.html{}
    end
  end
end