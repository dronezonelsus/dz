json.extract! drone, :id, :droneNumber, :droneName, :latitude, :longitude, :created_at, :updated_at
json.url drone_url(drone, format: :json)