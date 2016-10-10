json.extract! local, :id, :name, :address, :phone, :email, :description, :manager_id, :created_at, :updated_at
json.url local_url(local, format: :json)