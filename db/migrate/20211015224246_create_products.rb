class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :country
      t.integer :year
      t.integer :stock
      
      t.timestamps
    end
  end
end
