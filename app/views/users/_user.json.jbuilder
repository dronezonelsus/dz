json.extract! user, :id, :User, :Password, :CompanyName, :CompanyEmail, :Stock, :Latitude, :Longitude, :created_at, :updated_at
json.url user_url(user, format: :json)