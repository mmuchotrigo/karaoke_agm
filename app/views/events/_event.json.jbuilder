json.extract! event, :id, :name, :date_time, :capacity, :about, :locals_id, :created_at, :updated_at
json.url event_url(event, format: :json)