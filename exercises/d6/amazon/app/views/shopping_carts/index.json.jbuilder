json.array!(@shopping_carts) do |shopping_cart|
  json.extract! shopping_cart, :id, :user_id, :item_id
  json.url shopping_cart_url(shopping_cart, format: :json)
end
