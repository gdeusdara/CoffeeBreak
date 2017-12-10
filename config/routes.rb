Rails.application.routes.draw do


  resources :projetos do
    resources :comentarios
    member do
      put "like" => "projetos#upvote"
      put "unlike" => "projetos#downvote"
    end
  end

  get "like" => 'projetos#like'
  get "dislike" => 'projetos#dislike'

  get 'projetos' => 'projetos#index'
  delete 'apagar' => 'projetos#destroy'
  get 'sobre' => 'paginas_iniciais#sobre'
  get 'perfil' => 'paginas_iniciais#perfil'

  get 'novo_projeto' => 'projetos#new'

  get 'seguindo' => 'paginas_iniciais#seguindo'

  get 'home' => 'paginas_iniciais#home'
  root                 'paginas_iniciais#perfil'

  devise_for :usuarios, :controllers => { registrations: 'registrations' }

  devise_scope :usuario do
    get 'login' => 'devise/sessions#create'
    get 'cadastrar' => 'devise/registrations#new'
    get 'editar_conta' => 'devise/registrations#edit'
  end

  resources :usuarios  do
    member do
      get :following, :followers
    end
  end
   resources :relationships,       only: [:create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
