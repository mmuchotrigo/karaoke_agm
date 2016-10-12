json.extract! pedido, :id, :producto_id, :cantidad, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)