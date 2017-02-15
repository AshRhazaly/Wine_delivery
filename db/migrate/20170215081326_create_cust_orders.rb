class CreateCustOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :cust_orders do |t|
      t.string :name
      t.string :email
      t.text :address
      t.text :wine_name
      t.integer :wine_id
      t.integer :quantity

      t.timestamps
    end
  end
end
