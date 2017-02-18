class RemoveCustNameFromOrder < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :cust_name, :string
  end
end
