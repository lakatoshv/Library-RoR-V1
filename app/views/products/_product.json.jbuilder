json.extract! product, :id, :title, :auth, :zhanr, :pages_qty, :description, :image_url, :created_at, :updated_at
json.url product_url(product, format: :json)
