class RemoveTypeFromWine < ActiveRecord::Migration[5.0]
  def change
    remove_column :wines , :type
  end
end
