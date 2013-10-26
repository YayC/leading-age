json.array!(@users) do |user|
  json.extract! user, :name, :password_digest, :auth_token, :auth_token_expires_at, :password_reset_token, :password_reset_expires_at, :timezone
  json.url user_url(user, format: :json)
end
