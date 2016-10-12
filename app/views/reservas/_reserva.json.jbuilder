json.extract! reserva, :id, :reserved_at, :local_id, :sala_id, :description, :created_at, :updated_at
json.url reserva_url(reserva, format: :json)