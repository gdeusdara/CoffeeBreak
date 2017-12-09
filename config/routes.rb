Rails.application.routes.draw do

  get 'usuarios/show'

  resources :projetos
  get 'projetos' => 'projetos#index'
  get 'sobre' => 'paginas_iniciais#sobre'
  get 'perfil' => 'paginas_iniciais#perfil'

  root                 'paginas_iniciais#home'

  devise_for :usuarios, :controllers => { registrations: 'registrations' }

  devise_scope :usuario do
    get 'login' => 'devise/sessions#create'
    get 'cadastrar' => 'devise/registrations#new'
    get 'editar_conta' => 'devise/registrations#edit'
  end

  resources :usuarios do
    member do
      get :following, :followers
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
