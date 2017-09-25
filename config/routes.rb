Rails.application.routes.draw do
  
  devise_for :carriers
  root 'welcome#index'

  devise_for :customers, controllers: { registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
