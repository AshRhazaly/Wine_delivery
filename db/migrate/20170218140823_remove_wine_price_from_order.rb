class RemoveWinePriceFromOrder < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :wine_price, :decimal
  end
end
