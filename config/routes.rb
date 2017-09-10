Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/status',                  to: 'health#status',                defaults: { format: :json }
  get '/authenticated-status',    to: 'health#authenticated_status',  defaults: { format: :json }

  root to: 'dashboard#index'

end
