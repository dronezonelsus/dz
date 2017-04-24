class MappageController < ApplicationController
  
  ######## Index action ########
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
          marker.title drone.reload.drone_number.to_s
          marker.json({:departure => drone.reload.departure, :arrival => drone.reload.arrival})
          marker.picture({
            :url => ActionController::Base.helpers.asset_path('DroneMap.png'),
            :width => 60,
            :height => 60
          })
        end
        render json: @hash
      }
    end
  end
 
 ######## Not using this action right now ########
  def singledronepage

    #File.open("drone_telemetry_data.csv", "a+") do |f|
      #f.write "polyLat";
    #end 
    #flash.keep
    #@myhash = Hash.new
    #@myhash[:clickedDrone] = params[:string_marker] 
    # @postedHash = params[:string_marker] # Pass POSTed parameter to postedHash variable
    
    # # Parse and render json object of double-clicked drone icon from index.html.erb view
    # respond_to do |format|
    #   format.json {
    #     @parsed_drone = JSON.parse(@postedHash.to_json)
    #     @final_drone = JSON.parse(@parsed_drone['0'].to_json)

    #     @secondHash = Gmaps4rails.build_markers(@final_drone) do |drone, marker| 
    #       drone = JSON.parse(@parsed_drone['0'].to_json)
    #       marker.lat drone['lat']
    #       marker.lng drone['lng']
    #       marker.infowindow drone['infowindow']
    #       marker.picture({
    #         :url => ActionController::Base.helpers.asset_path('DroneMap.png'),
    #         :width => 60,
    #         :height => 60
    #       })
    #     end
    #     flash[:notice] = @secondHash[0]
    #     #flash.keep
    #     render json: flash[:notice]
    #   }
    #   format.html{}
    # end
  end
end