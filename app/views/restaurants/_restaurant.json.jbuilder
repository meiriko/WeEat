json.extract! restaurant, :id, :name, :cuisine, :rating, :accepts_10bis, :address, :max_delivery_time, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
