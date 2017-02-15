class ChangeCustOrderTable < ActiveRecord::Migration[5.0]
  def change
    rename_table :custorders, :orders
  end
end
