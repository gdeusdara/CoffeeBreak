class UsuariosController < ApplicationController
    before_action :set_usuario, only: [:show]
    
  def show
    @usuario = Usuario.find(params[:id])
  end

  def following
    @title = "Seguindo"
    @usuario  = Usuario.find(params[:id])
    render 'show_follow'
  end

  def followers
    @title = "Seguidores"
    @usuario  = Usuario.find(params[:id])
    render 'show_follow'
  end

  private
  def set_usuario
    @usuario = Usuario.find(params[:id])
  end

  def usuario_params
    params.require(:usuario).permit(:nome, :projetos, :id)
  end
end
