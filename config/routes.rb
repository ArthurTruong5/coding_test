Rails.application.routes.draw do
  resources :lists, :path => '/' do
    collection { post :import }
    get 'remove_all'
  end
  resources :lists, :collection => { :remove_all => :get }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
