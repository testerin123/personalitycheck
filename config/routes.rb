# frozen_string_literal: true

Rails.application.routes.draw do
  get 'questions/show'
  root 'static#index'

  post '/', to: 'users#create'

  get '/questionaire', to: 'questions#show'

  post '/submit_answer', to: 'questions#create_user_answer'

  get '/result', to: 'static#result'
end
