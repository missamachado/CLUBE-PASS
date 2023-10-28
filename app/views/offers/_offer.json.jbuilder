json.extract! offer, :id, :title, :description, :price, :seller_id, :created_at, :updated_at
json.url offer_url(offer, format: :json)
