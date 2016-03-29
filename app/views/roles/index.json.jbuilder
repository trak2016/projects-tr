json.array!(@roles) do |role|
  json.extract! role, :id, :name, :email
  json.url role_url(role, format: :json)
end
