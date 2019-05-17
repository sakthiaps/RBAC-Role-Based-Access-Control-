Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :roles do
    collection do
      get :access
    end
  end

  root to: "roles#index"
end
