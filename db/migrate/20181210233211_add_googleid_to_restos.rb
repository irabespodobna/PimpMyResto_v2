class AddGoogleidToRestos < ActiveRecord::Migration[5.2]
  def change
    add_column :restos, :googleid, :string
  end
end
