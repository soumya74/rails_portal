Rails.application.routes.draw do
  resources :portfolios, except: [:show]

  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'portfolios/angular', to: 'portfolios#angular'
  get 'portfolios/ruby_on_rails', to: 'portfolios#ruby_on_rails'

  root to: "pages#home"

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

end
