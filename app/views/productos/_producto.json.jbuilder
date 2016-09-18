json.extract! producto, :id, :tipe, :name, :price, :available, :local_id, :created_at, :updated_at
json.url producto_url(producto, format: :json)