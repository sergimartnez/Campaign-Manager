Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :campaigns do
    resources :prototypes do
      resources :contents do
        resources :comments
      end
    end
  end
  root to: "site#home"

end
