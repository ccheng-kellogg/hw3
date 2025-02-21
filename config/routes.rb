Rails.application.routes.draw do
  get 'places/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 # Routes for Places
#  get("/places", { :controller => "places", :action => "index" })   # List all places
#  get("/places/new", { :controller => "places", :action => "new" }) # Form to create a new place
#  post("/places", { :controller => "places", :action => "create" }) # Handle form submission
#  get("/places/:id", { :controller => "places", :action => "show" }) # Show a specific place

resources :places

 # Routes for Entries (nested under Places)
 get("/places/:place_id/entries/new", { :controller => "entries", :action => "new" })  # Form to create a new entry
post("/places/:place_id/entries", { :controller => "entries", :action => "create" })  # Handle form submission
  # Defines the root path route ("/")


  # get("/", { :controller => "articles", :action => "index" })
end
