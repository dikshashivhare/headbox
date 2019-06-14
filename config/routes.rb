Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }


  root to: "home#index"
  resources :listings do
    get :step1
    get :step2
    get :step3
  end

end
