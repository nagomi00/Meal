Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'foods/:food_id/likes' => 'likes#create'
  get 'foods/:food_id/likes/:id' => 'likes#destroy'
  get 'foods/top' => 'foods#top'

  resources :foods do
    resources :likes, only: [:create, :destroy]

    resources :comments, only: [:create]
  end
  root 'foods#top'
  resources :tests
end
