json.extract! reservation, :id, :reserved_at, :description, :sala_id, :user_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)