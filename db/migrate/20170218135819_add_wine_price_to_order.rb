class AddWinePriceToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :wine_price, :decimal
  end
end
