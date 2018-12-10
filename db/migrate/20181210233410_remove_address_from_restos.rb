class RemoveAddressFromRestos < ActiveRecord::Migration[5.2]
  def change
    remove_column :restos, :address, :string
  end
end
