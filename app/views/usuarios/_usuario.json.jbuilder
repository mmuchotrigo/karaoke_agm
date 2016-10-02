json.extract! usuario, :id, :name, :last_name, :tipo_usuario_id, :local_id, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)