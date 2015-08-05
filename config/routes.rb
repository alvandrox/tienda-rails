Rails.application.routes.draw do

  devise_for :usuarios

  root 'proveedores#index'

  resources :categorias
  resources :productos
  resources :colores

  resources :proveedores do
    resources :marcas, only: [:create]
  end

  resources :marcas do
    resources :colores, only: [:create]
    resources :productos, only: [:create]
  end

end
