Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # Rutas para Devise, manejo de sesiones y registros
  devise_for :users, controllers: {
    registrations: 'registrations', # Controlador personalizado para el registro
    sessions: 'sessions' # Controlador personalizado para la sesión
  }

  # Rutas estándar para juegos y reservas
  # resources :games
  # resources :reservations, only: [:index, :show, :create, :update, :destroy]

  # Rutas para la API (posiblemente para el frontend)
  namespace :api do
    resources :reservations, only: %i[index show create update destroy]
    resources :games, only: %i[index show create update destroy]
  end
end
