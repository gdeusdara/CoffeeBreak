Rails.application.routes.draw do

  mount Commontator::Engine => '/commontator'

  resources :projetos
  get 'projetos' => 'projetos#index'
  get 'sobre' => 'paginas_iniciais#sobre'

  root                 'paginas_iniciais#home'

  devise_for :usuarios, :controllers => { registrations: 'registrations' }

  devise_scope :usuario do
    get 'login' => 'devise/sessions#create'
    get 'cadastrar' => 'devise/registrations#new'
    get 'editar_conta' => 'devise/registrations#edit'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
