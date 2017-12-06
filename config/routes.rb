Rails.application.routes.draw do

  get 'home' => 'paginas_iniciais#home'

  get 'sobre' => 'paginas_iniciais#sobre'

  root                 'paginas_iniciais#home'

  devise_for :usuarios

  devise_scope :user do
    get 'loggin' => 'devise/sessions#create'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
