RailsAdmin.config do |config|

config.parent_controller = "::ApplicationController"

  config.authorize_with do |controller|
    unless current_usuario.admin?
      redirect_to(
        main_app.root_path,
        alert: "Você não está autorizado a entrar nesta pagina"
      )
    end
  end
  ### Popular gems integration

  ## == Devise ==
  #config.authenticate_with do
  #   warden.authenticate! scope: :usuario
  #end
  #config.current_usuario_method(&:current_usuario)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
