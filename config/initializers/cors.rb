Rails.application.config.middleware.insert_before 0 , Rails::Cors do 
  allow do
    origin "http://localhost3000"
    resource "*", headers: :any, methods: [:get, :post, :put, :path, :delete, :options, :head], credentials: true
  end 
  allow do
    origin "https://tiltzin.netlify.app"
    resource "*", headers: :any, methods: [:get, :post, :put, :path, :delete, :options, :head], credentials: true
  end  
end    