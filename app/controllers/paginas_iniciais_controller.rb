class PaginasIniciaisController < ApplicationController
  def home
  end

  def sobre
  end

  def perfil
    if !usuario_signed_in?
      redirect_to "/"
    end
  end
end
