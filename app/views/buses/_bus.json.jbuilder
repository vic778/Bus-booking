json.extract! bus, :id, :name, :model, :boarding, :destination, :no_of_seats, :time, :date, :agence_id, :created_at, :updated_at
json.url bus_url(bus, format: :json)
