json.extract! user, :id, :User, :Password, :CompanyName, :CompanyEmail, :Stock, :created_at, :updated_at
json.url user_url(user, format: :json)