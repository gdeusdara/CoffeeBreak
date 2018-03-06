class PaginasIniciaisController < ApplicationController
  def home
    if usuario_signed_in?
      redirect_to seguindo_path
    end
  end

  def sobre
  end

  def perfil
    if !usuario_signed_in?
      redirect_to home_path
    end
  end

  def seguir_usuario(usuario_id)
    current_usuario.follow(usuario_id)
    redirect_to seguindo_path
  end


  def seguindo
    if !usuario_signed_in?
      redirect_to home_path
    end
  end
end
