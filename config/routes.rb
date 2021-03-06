Meggings2::Application.routes.draw do

  
  # get "auths_controller/index"
  # get "auths_controller/new"
  # get "users/index"
  # get "users/new"
  # get "meggings/index"
  # get "meggings/new"
  # get "meggings/show"
  # get "meggings/edit"


  post "shopping_cart/add/:megging_id" => 'shopping_carts#add', as: :add_megging 
  post "shopping_cart/remove/:megging_id" => 'shopping_carts#remove', as: :remove_megging


  resources :meggings, only: [:index, :create, :new, :edit, :show, :update, :destroy]
  resources :welcom, only: [:index]
  # get "meggings/welcome" => 'meggings#welcome'
  # delete "meggings/:id" => 'meggings#destroy'

  resources :users, only: [:index,:new,:create]
  resources :auths, only: [:new, :create]
  resource :shopping_cart, only: [:show, :update, :destroy]

  # patch 'shopping_carts' => "shopping_carts#update"

  delete "auths" => "auths#destroy"
  resources :profiles

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
