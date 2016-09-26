json.extract! client, :id, :name, :birthday, :email, :telephone, :gender, :created_at, :updated_at
json.url client_url(client, format: :json)