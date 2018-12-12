Rails.application.routes.draw do
  get 'restos/search', to: 'restos#search'
  post 'restos/create', to: 'restos#create'
  get 'restos/create', to: 'restos#search'
  get 'restos', to: 'restos#index'
  get 'restos/:id', to: 'restos#show'
  post 'restos/:id', to: 'survey#create'

  devise_for :users
  get '/', to: 'home#home'
  get '/browse', to: 'home#browse'
  get '/team', to: 'home#team'
  get '/pimped', to: 'home#pimped'
  get '/survey', to: 'survey#survey'
  get '/survey/index', to: 'survey#index'
  post '/survey', to: 'survey#create'
  post '/foodstyle', to: 'survey#survey_post'
end
