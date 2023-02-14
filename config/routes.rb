Rails.application.routes.draw do
  devise_for :hrs
    #get 'home/index'
  #root 'home#index'
  root 'employees#index'

  resources :employees
  resources :documents

  get 'about' => 'pages#about_us'
  get 'contact' => 'pages#contact_us'
  get 'privacy-policy' => 'pages#privacy_policy'

end
