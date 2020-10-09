Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'graphs#index'
  # resource「s」ではない！（updateに「:id」は不要だから）
  resource :graphs, only: %i[index create update]
end
