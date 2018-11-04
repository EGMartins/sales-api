Rails.application.routes.draw do
  
  scope module: :v1, constraints: ApiVersion.new('v1', true) do
    get 'sales', to: 'sales#index'
    get 'this_year_sales', to: 'sales#year_sales'
    get 'two_years_sales', to: 'sales#two_years_sales'
  end
  
  
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end
