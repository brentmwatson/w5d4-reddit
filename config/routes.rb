Rails.application.routes.draw do
  root 'links#index'
  get  '/vote/:id' => 'vote#up_vote', as: :upvote
  get  '/vote/:id' => 'vote#down_vote', as: :downvote
  resources :links
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
