class CreateComentarios < ActiveRecord::Migration[5.1]
  def change
    create_table :comentarios do |t|
      t.integer :avaliacao
      t.text :texto

      t.timestamps
    end
  end
end
