SfdcRailsDemo::Application.routes.draw do
  get "accounts/index"
  get "accounts/search"
  match "/accounts/:id", to: "accounts#show", as: 'account'

  root :to => 'accounts#index'

end
