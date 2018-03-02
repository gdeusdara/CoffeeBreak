class AddUsuarioIdToComentarios < ActiveRecord::Migration[5.1]
  def change
    add_column :comentarios, :usuario_id, :integer
  end
end
