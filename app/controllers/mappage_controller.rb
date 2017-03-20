class MappageController < ApplicationController

  $parsed_drone = 0

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
    myhash = params[:string_marker]
    #@myhash = {"string_marker"=>"{\"lat\":32.7764,\"lng\":-96.797,\"infowindow\":\"Destroyer\",\"picture\":{\"url\":\"/assets/DroneMap-6f8d0d4d361c04173e54007df377d70458ab1df442df7f0ae370903dfb8ff0c8.png\",\"width\":60,\"height\":60}}"}
    respond_to do |format|
      format.json {
        puts "This is new : " + myhash.to_json
        parsed_drone = JSON.parse(myhash).to_s
        puts "Parsed : " +  parsed_drone.to_s
        #render json: @myhash
        render json: parsed_drone
      }
      format.html{}
    end
    #@dehash = ActiveSupport::JSON.decode(@drone).to_s
   #puts "Updated is mine: " + @drone.to_s
    # respond_to do |format|
    #   format.html {render json: @drone}
    #   format.json {

        # @myhash = Gmaps4rails.build_markers(@drone) do |drone|
        #   marker.lat @drone.lat
        #   marker.lng @drone.lng
        #   marker.infowindow @drone.infowindow
        #   marker.picture({
        #     :url => ActionController::Base.helpers.asset_path('DroneMap.png'),
        #     :width => 60,
        #     :height => 60
        #   })
        # end        
      # }
    # end
  end
end