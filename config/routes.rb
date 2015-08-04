Rails.application.routes.draw do
  resources :categorias
  resources :productos
  devise_for :usuarios

  resources :proveedores do
    resources :marcas, only: [:create]
  end

  resources :marcas do
    resources :colores, only: [:create]
    resources :productos, only: [:create]
  end

  root 'proveedores#index'
end
