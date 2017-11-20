json.extract! social_network, :id, :name, :sn_type, :profile_id, :created_at, :updated_at
json.url social_network_url(social_network, format: :json)
