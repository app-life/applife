Rails.application.routes.draw do
#ログイン
  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}
# devise_for :users, controllers: {
#   sessions:      'users/sessions',
#   passwords:     'users/passwords',
#   registrations: 'users/registrations'
# }

#エンドユーザー
  get '/apps/about' => 'apps#about'
  resources :images
  resources :contacts, only: [:new, :create]
  resources :apps do
      resources :post_comments, only: [:create, :destroy,:edit, :update]
  end
  get '/os_category/:category', to: 'apps#os_category', as: :os_category
  get '/price_category/:category', to: 'apps#price_category', as: :price_category
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #ルートURL
  root "apps#index"


#管理者
  resources :admins, only: [:index]
  resources :post_comments, only: [:create, :destroy, :update]
  namespace :admins do
    resources :apps
    resources :contacts, only: [:index, :show, :destroy]
    post 'apps' => 'apps#create'
    resources :commentcheck, only: [:index, :show, :update,:destroy]
    get '/os_category/:category', to: 'apps#os_category', as: :os_category
    get '/price_category/:category', to: 'apps#price_category', as: :price_category
  end
end