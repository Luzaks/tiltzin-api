Rails.application.config.middleware.insert_before 0 , Rack::Cors do 
  allow do
    origins "http://localhost3000"
    resource "*", headers: :any, methods: [:get, :post, :put, :path, :delete, :options, :head], credentials: true
  end 
  allow do
    origins "https://tiltzin.netlify.app"
    resource "*", headers: :any, methods: [:get, :post, :put, :path, :delete, :options, :head], credentials: true
  end  
end    