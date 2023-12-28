Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  root 'home#index'
  get 'home/index', to: 'home#index', as: 'menu_index'
  get 'exemplo/index', to: 'exemplo#index', as: 'exemplo_index'
  get 'tarefa2/index', to: 'tarefa2#index', as: 'tarefa2_index'
  get 'fatorial/index', to: 'fatorial#index', as: 'fatorial_index'
end
