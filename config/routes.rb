Projektslub::Application.routes.draw do



  get "form_mailer/sent"
  post "form_mailer/sent"

  get "pages/formularz", :path => "formularz"
  post "pages/formularz", :path => "formularz"
  get "pages/faq", :path => "faq"
  get "pages/kontakt", :path => "kontakt"
  get "search/home"

  devise_for :users

  resources :photos
  resources :elements, :path => "elementy"
  resources :colors, :path => "kolory"
  resources :tags, :path => "tagi"
  resources :invitations, :path => "zaproszenia"
  resources :collections, :path => "kolekcje"

  get "home/admin", :path => "admin"
  post "home/admin"

  root "home#index"

  match "*path", :to => "application#routing_error", via: [:get, :post]

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
