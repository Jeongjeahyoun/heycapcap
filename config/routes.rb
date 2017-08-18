Rails.application.routes.draw do
  
  resources :contests
  resources :teams
  resources :posts
  get 'home/index'
  root 'home#index'
  
  get 'home/diet_program'

  devise_for :users
  
  post '/posts/:post_id' =>"comments#create"
  delete '/posts/:post_id/comments/:id' =>"comments#destroy"
  post '/posts/:post_id/comments/:id' =>"comments#update"
  post '/tinymce_assets' => 'tinymce_assets#create'
  

  
  get '/suzy' => "home#suzy"
  get '/sulhyun' => "home#sulhyun"
  get '/iu' => "home#iu"
  get '/dongwon' => "home#dongwon"
  get '/contact' => "home#contact"
  post '/home/contact' => 'home#contact'
  
  get '/zzim' => "home#zzim"
  get 'home/delete'
  get 'home/delete/:id' => 'home#delete'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  

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
  #     #   end
end
