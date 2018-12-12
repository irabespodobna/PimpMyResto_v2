class AddGoogleIdToResto < ActiveRecord::Migration[5.2]
  def change
    add_column :restos, :googleid, :string
    add_index :restos, :googleid
  end
end
