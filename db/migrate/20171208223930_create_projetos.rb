class CreateProjetos < ActiveRecord::Migration[5.1]
  def change
    create_table :projetos do |t|
      t.string :titulo
      t.text :descricao
      t.text :instrucoes
      t.timestamps
    end
  end
end
