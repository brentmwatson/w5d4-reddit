Rails.application.routes.draw do
  root 'links#index'
  get  '/vote/:id' => 'votes#up_vote', as: :upvote
  get  '/downvote/:id' => 'votes#down_vote', as: :downvote
  get 'visit/:id' => 'links#visit', as: :visitlink
  resources :links
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
