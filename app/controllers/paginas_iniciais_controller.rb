class PaginasIniciaisController < ApplicationController
  def home
  end

  def sobre
  end

  def perfil
    if !usuario_signed_in?
      redirect_to home_path
    end
  end



  def seguindo
    @seguindo = current_usuario.following.all
  end
end
