json.extract! micropost, :id, :title, :body, :created_at, :updated_at
json.url micropost_url(micropost, format: :json)
