Rails.application.routes.draw do
  get 'restos', to: 'restos#index'
  devise_for :users
  get '/', to: 'home#home'
  get '/browse', to: 'home#browse'
  get '/pimped', to: 'home#pimped'

  get '/resto', to: 'step_page#resto'
  get '/survey', to: 'step_page#survey'
  get '/foodstyle', to: 'step_page#foodstyle'




end
