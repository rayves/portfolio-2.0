Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about', as: 'about'
  get 'journey', to: 'pages#journey', as: 'journey'
  get 'projects', to: 'pages#projects', as: 'projects'
  get 'projects/:id', to: 'pages#project', as: 'project'
  # get 'blog', to: 'pages#blog', as: 'blog'
  get 'contact', to: 'pages#contact', as: 'contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
