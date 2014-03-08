Gigbooker::Application.routes.draw do


#NOTE => if the same resources are across multiple models (or paths), can use 'concern'
#to DRY code:

# concern :sociable do
#   resources :tags
#   resources :foo
# end

# resources :bands, concerns: :sociable

#Can also pass block to sociable:
#  concern :sociable do |options|
# And for options can specify controller methods:
# resources :bands do 
#   concerns: :sociable, only: :create
# end

# Note that instead of ':only' you can also pass ':create'

#If there are a lot of concerns, may want to abstract to object.

  root :to => 'static_pages#home'

  resources :bands
  resources :venues do 
    resource :address
  end

  # get 'bands/register' => 'bands#new'
  # get 'venues/register' => 'venues#new'


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.


  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
