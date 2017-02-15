class CreateCustorders < ActiveRecord::Migration[5.0]
  def change
    create_table :custorders do |t|
      t.string :cust_name
      t.string :email
      t.text :address
      t.integer :wine_id
      t.integer :quantity

      t.timestamps
    end
  end
end
