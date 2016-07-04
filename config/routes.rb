Rails.application.routes.draw do
  resources :questions do
    resources :answers do
      member do
        post 'rate_up'
        post 'rate_down'
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'questions#index'
end
