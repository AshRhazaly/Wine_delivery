class CreateWines < ActiveRecord::Migration[5.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.string :type
      t.text :description
      t.string :year

      t.timestamps
    end
  end
end
