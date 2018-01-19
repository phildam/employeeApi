Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace 'api' do
    namespace 'v1' do
      resources :employees
      resources :salary

      resources :employees, shallow: true do
        resources :salary
      end
    end
  end

  scope module: 'api' do
    resources :salary, :employees
  end

end
