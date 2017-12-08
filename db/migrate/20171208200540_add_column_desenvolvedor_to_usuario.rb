class AddColumnDesenvolvedorToUsuario < ActiveRecord::Migration[5.1]
  def change
    add_column :usuarios, :desenvolvedor, :boolean
  end
end
