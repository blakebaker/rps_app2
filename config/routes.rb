RpsApp::Application.routes.draw do
  get "throw/throwing"

  get "stats/find"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)
  match 'throw/:type' => 'throw#player_throw'
  match 'stats/stats' => 'stats#stats'
end
