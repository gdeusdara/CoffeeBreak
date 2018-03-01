class AddUsernameToUsuarios < ActiveRecord::Migration[5.1]
  def change
    add_column :usuarios, :username, :string
    add_index :usuarios, :username, unique: true
    ##attr_accessible :username
  end
end
