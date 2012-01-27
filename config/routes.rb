SfdcRailsDemo::Application.routes.draw do
  get "accounts/index"

  get "accounts/show"

  get "accounts/search"

  root :to => 'accounts#index'

end
