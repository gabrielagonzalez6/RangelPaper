json.extract! profile, :id, :name, :lastname, :phone, :email, :address, :city, :country, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
