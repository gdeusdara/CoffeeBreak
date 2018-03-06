class ComentariosController < ApplicationController
  before_action :find_projeto
	before_action :find_comentario, only: [:edit, :update, :destroy]
	before_action :authenticate_usuario!, only: [:new, :edit, :create]

	def new
		@comentario = Comentario.new
	end

	def create
    @comentario = Comentario.new(comentario_params)
    @comentario.projeto_id = @projeto.id
    @comentario.usuario_id = current_usuario.id

    if @comentario.save
      redirect_to projeto_path(@projeto)
    else
      render 'new'
    end

	end

	def edit
	end

	def update
		if @comentario.update(comentario_params)
			redirect_to projeto_path(@projeto)
		else
			render 'edit'
		end
	end

	def destroy
		@comentario.destroy
		redirect_to projeto_path(@projeto)
	end

	private

		def comentario_params
			params.require(:comentario).permit(:avaliacao, :texto)
		end

		def find_projeto
			@projeto = Projeto.find(params[:projeto_id])
		end

		def find_comentario
			@comentario = Comentario.find(params[:id])
		end

end
