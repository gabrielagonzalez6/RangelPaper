json.extract! gallery, :id, :image, :status, :model_id, :created_at, :updated_at
json.url gallery_url(gallery, format: :json)
