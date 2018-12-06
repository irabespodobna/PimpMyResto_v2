Rails.application.routes.draw do
  get 'restos/create'
  post 'restos/create', to: 'restos#create'
  get 'restos', to: 'restos#index'

  devise_for :users
  get '/', to: 'home#home'
  get '/browse', to: 'home#browse'
  get '/pimped', to: 'home#pimped'

  get '/resto', to: 'step_page#resto'
  get '/survey', to: 'survey#survey'
  get '/survey/index', to: 'survey#index'
  post '/survey', to: 'survey#create'
  get '/foodstyle', to: 'step_page#foodstyle'
  post '/foodstyle', to: 'survey#survey_post'
end
