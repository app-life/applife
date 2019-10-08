Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# #Administrators::~~DeviseController
devise_for :administrators
# , controllers: {
#   sessions:      "administrators/sessions",
#   registrations: "administrators/registrations"
# }

###ルートURL
root "apps#index"