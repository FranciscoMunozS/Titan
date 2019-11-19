json.extract! appointment, :id, :date, :start_hour, :end_hour, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
