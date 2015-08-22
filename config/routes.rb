Rails.application.routes.draw do

  resources :sin_boletas
  resources :facturas
  resources :boletas
  resources :ventas
  devise_for :usuarios

  root 'proveedores#index'

  resources :categorias
  resources :colores
  resources :tallas
  resources :articulos

  resources :proveedores do
    resources :marcas, only: [:create]
  end

  resources :marcas do
    resources :productos, only: [:create]
  end

  resources :productos do
    resources :articulos, only: [:create]
  end

end
