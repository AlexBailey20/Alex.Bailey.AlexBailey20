json.array!(@users) do |user|
  json.extract! user, :id, :name, :user_name, :password, :address
  json.url user_url(user, format: :json)
end
