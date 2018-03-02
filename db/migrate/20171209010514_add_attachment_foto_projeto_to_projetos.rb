class AddAttachmentFotoProjetoToProjetos < ActiveRecord::Migration[5.0]
  def self.up
    change_table :projetos do |t|
      t.attachment :foto_projeto
    end
  end

  def self.down
    remove_attachment :projetos, :foto_projeto
  end
end
