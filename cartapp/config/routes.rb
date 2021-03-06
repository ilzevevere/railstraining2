Rails.application.routes.draw do

  get 'users/index'

  get 'users/index' => 'users#show'

  get 'users/show'

  get 'admin/show'

  root 'page#home' #pages controller lets access to home method
  
  resources :products
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get '/admin' => 'rails_admin/main#dashboard'
  
  devise_for :users
  get '/cart' => 'cart#index' #renders cart controller with index action
  get '/cart/clear' => 'cart#clearCart' #when user clears cart he will be redirected to index page
  get '/cart/:id' => 'cart#add' #allows user to add to cart products
  
  resources :users
  #get '/users/:id' => 'users#index'
  get '/user/:id' => 'users#show'
  
  resources :admin 
  resources :profiles
  #get ':user_name', to: 'profiles#show', as: :profile  
 
  devise_for :users
  
  get '/cart' => 'cart#index' #renders cart controller with index action
  get '/cart/clear' => 'cart#clearCart' #when user clears cart he will be redirected to index page
  get '/cart/:id' => 'cart#add' #allows user to add to cart products
  #get '/cart/:id' => 'cart#remove'  #allows user to remove to cart products
  #post '/add_to_cart/:product_id' => 'cart#add_to_cart', :as => 'add_to_cart'
  resources :charges
  
  get 'page/about'

  #get 'page/faqs'

  get 'page/contact'

  get 'charges/new'


  #post 'product/:id', to: 'cart#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
