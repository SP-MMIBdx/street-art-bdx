json.extract! artist, :id, :name, :photo, :description, :created_at, :updated_at
json.url artist_url(artist, format: :json)
