ActionController::Routing::Routes.draw do |map|
  
  map.login 'login', :controller => 'sessions', :action => 'login'
  
  map.root :controller => 'frontend/home', :action => 'index'
  
  map.relationbrowse "relationbrowse", :controller => 'frontend/relation_browser', :action => 'index'
  map.relate "relationBrowser.:format", :controller => 'frontend/relation_browser', :action => 'relate'
  
  map.resources :gazetteer_continents, :controller => 'frontend/gazetteer_continents'
  map.gazetteer_continents "gazetteer_continents", :controller => 'frontend/gazetteer_continents', :action => 'index'
  map.tree "continentData.:format", :controller => 'frontend/gazetteer_continents', :action => 'geo_tree_data'
  
  
  map.gearth "gearth", :controller => 'frontend/gearth', :action => 'index'
  
  map.gmap "gmap", :controller => 'frontend/gmap', :action => 'index'
  
  map.search "search", :controller => 'frontend/search', :action => 'index'
  
  map.about "about", :controller => 'frontend/about', :action => 'index'
  
  map.acknowledgements "acknowledgements", :controller => 'frontend/acknowledgements', :action => 'index'
  
  map.resources :assignments, :controller => 'frontend/assignments'
  
  map.resources :assignment_titles, :controller => 'frontend/assignment_titles'
  map.assignment_titles "assignment_title", :controller => 'frontend/assignment_titles', :action => 'index'
  map.assignment_titles_search "assignment_title_search", :controller => 'frontend/assignment_titles', :action => 'search'
  
  map.resources :assignment_types, :controller => 'frontend/assignment_types'
  map.assignment_types "assignment_type", :controller => 'frontend/assignment_types', :action => 'index'
  
  map.resources :individuals, :controller => 'frontend/individuals'
  map.individuals "individual", :controller => 'frontend/individuals', :action => 'index'
  map.individuals_search "individual_search", :controller => 'frontend/individuals', :action => 'search'
  
  map.resources :letters, :controller => 'frontend/letters'
  map.letters "letter", :controller => 'frontend/letters', :action => 'index'
  
  map.resources :organizations, :controller => 'frontend/organizations'
  map.organizations "organization", :controller => 'frontend/organizations', :action => 'index'
  
  map.resources :locations, :controller => 'frontend/locations'
  map.locations "location", :controller => 'frontend/locations', :action => 'index'
  map.locations_search "location_search", :controller => 'frontend/locations', :action => 'search'
  
  map.resources :states, :controller => 'frontend/states'
  map.states "state", :controller => 'frontend/states', :action => 'index'
  
  map.resources :regions, :controller => 'frontend/regions'
  map.regions "region", :controller => 'frontend/regions', :action => 'index'
  
  map.resources :continents, :controller => 'frontend/continents'
  map.continents "continent", :controller => 'frontend/continents', :action => 'index'
  
  map.resources :validations, :controller => 'frontend/validations'
  map.validations "validation", :controller => 'frontend/validations', :action => 'index'
  
  
  map.namespace :active_scaffold do |active_scaffold|
    active_scaffold.root :controller => 'default', :action => 'index'
  end
  
  
  
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing the them or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
