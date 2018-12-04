Rails.application.routes.draw do
  devise_for :users
  get '/', to: 'home#home'
  get '/browse', to: 'home#browse'
  get '/pimped', to: 'home#pimped'

  get '/resto', to: 'step_page#resto'
  get '/survey', to: 'step_page#survey'
  get '/foodstyle', to: 'step_page#foodstyle'

  

end
