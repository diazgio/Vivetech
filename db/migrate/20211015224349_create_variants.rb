class CreateVariants < ActiveRecord::Migration[6.1]
  def change
    create_table :variants do |t|
      t.string :brand
      t.float :price
      t.string :supplier
      t.boolean :guarantee
      
      t.references :product
      t.timestamps
    end
  end
end
