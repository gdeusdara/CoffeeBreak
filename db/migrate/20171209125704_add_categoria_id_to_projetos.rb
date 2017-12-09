class AddCategoriaIdToProjetos < ActiveRecord::Migration[5.1]
  def change
    add_column :projetos, :categoria_id, :integer
  end
end
