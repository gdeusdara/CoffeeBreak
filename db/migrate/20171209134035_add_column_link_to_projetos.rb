class AddColumnLinkToProjetos < ActiveRecord::Migration[5.1]
  def change
    add_column :projetos, :link, :string
  end
end
