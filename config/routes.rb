Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    resources :tags
    member do
      get 'add_tag'
      get 'remove_tag'
    end
    collection do
      get 'sort_user_data'
      get 'filter_users_data'
    end
  end
  resources :tags do
  	collection do
  	  get 'sort_tag_data'
  	end
  end
end
