Rails.application.routes.draw do
  resources :events, :only => [:index, :show], :defaults => { :format => 'json' }

  root 'events#index'
end
