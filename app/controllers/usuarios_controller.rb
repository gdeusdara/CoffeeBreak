class UsuariosController < ApplicationController
    before_action :set_usuario, only: [:show]
  def show
  end

  private
  def set_usuario
    @usuario = Usuario.find(params[:id])
  end

  def usuario_params
    params.require(:usuario).permit(:nome, :projetos)
  end
end
