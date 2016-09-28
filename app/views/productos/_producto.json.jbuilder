json.extract! producto, :id, :type, :name, :price, :available, :category_id, :created_at, :updated_at
json.url producto_url(producto, format: :json)