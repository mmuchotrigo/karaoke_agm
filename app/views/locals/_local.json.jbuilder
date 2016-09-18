json.extract! local, :id, :name, :address, :phone, :email, :about, :manager, :created_at, :updated_at
json.url local_url(local, format: :json)