class AddPriceToWine < ActiveRecord::Migration[5.0]
  def change
    add_column :wines, :price, :decimal
  end
end
