json.extract! product, :id, :name, :brand, :quantity, :price, :description, :rating, :category_id, :created_at, :updated_at
json.url product_url(product, format: :json)
