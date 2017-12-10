class RelationshipsController < ApplicationController
def create
  usuario = Usuario.find(params[:followed_id])
  current_usuario.follow(usuario)
  redirect_to usuario
end

def destroy
  usuario = Relationship.find(params[:id]).followed
  current_usuario.unfollow(usuario)
  redirect_to usuario
end
end
