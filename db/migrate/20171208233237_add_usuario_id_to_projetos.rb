class AddUsuarioIdToProjetos < ActiveRecord::Migration[5.1]
  def change
    add_column :projetos, :usuario_id, :integer
  end
end
