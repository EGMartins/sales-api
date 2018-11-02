Rails.application.routes.draw do
  
  scope module: :v1, constraints: ApiVersion.new('v1', true) do
    get 'sales', to: 'sales#index'
  end
  
  
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end
