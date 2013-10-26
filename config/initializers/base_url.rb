if Rails.env.production?
  ENV['BASE_URL'] = 'http://leading-age.herokuapp.com'
else
  ENV['BASE_URL'] = 'localhost:3000'
end
