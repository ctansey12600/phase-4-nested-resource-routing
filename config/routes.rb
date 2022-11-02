Rails.application.routes.draw do
  resources :dog_houses, only: [:show] do
    resources :reviews, only: %i[show index]
  end

  resources :reviews, only: %i[show index create]
end
