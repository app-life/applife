Rails.application.routes.draw do
#ログイン
  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}
devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}
  #エンドユーザー
  get '/apps/about' => 'apps#about'
  resources :apps
  resources :images
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #ルートURL
  root "apps#index"


#管理者
  resources :admins, only: [:index]
  namespace :admins do
    resources :apps
    resources :contacts, only: [:index, :show]
    post 'apps' => 'apps#create'

  end
end