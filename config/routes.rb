Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :profieles
  resources :destinations
  root 'items#top'
  resources :items, only: [:new, :create, :show, :destroy] do
    collection do
      get 'top'
    end
  end
  resources :categories, only: [:index, :show] do
    collection do
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
      get 'get_size', defaults: { format: 'json' }
    end
  end
end
