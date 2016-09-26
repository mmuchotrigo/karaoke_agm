json.extract! reservation, :id, :salas_id, :clients_id, :date_time, :about, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)