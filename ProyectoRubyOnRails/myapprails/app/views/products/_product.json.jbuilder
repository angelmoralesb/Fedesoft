json.extract! product, :id, :prd_name, :categories_id, :created_at, :updated_at
json.url product_url(product, format: :json)
