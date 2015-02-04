Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  #scope module: :v1 do
  scope module: :v1, constraints: ApiConstraint.new(version: 1) do
      resources :articles, only: :index
    end 
    
    scope module: :v2, constraints: ApiConstraint.new(version: 2) do
        resources :articles, only: :index
      end 
    
      # You can have the root of your site routed with "root"
      # root 'welcome#index'

      # Example of regular route:
      #   get 'products/:id' => 'catalog#view'
      #def api_version(version, &routes)
      #    api_constraint = ApiConstraint.new(version: version)
      #    scope(module: "v#{version}", constraints: api_constraint, &routes)
      #  end
      #
      #  api_version(1) do
      #    resources :articles, only: :index
      #  end
      #
      #  api_version(2) do
      #    resources :articles, only: :index
      #  end
      # Example of named route that can be invoked with purchase_url(id: product.id)
      #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

      # Example resource route (maps HTTP verbs to controller actions automatically):
      #   resources :products

      # Example resource route with options:
      resources :articles
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
