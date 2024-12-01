# config/initializers/cors.rb

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'localhost:3001', '127.0.0.1:3001', '127.0.0.1:3000', 'https://esport-frontend.netlify.app',
            'localhost:5173'

    resource '*',
             headers: :any,
             methods: %i[get post put patch delete options head],
             credentials: false
  end
end
