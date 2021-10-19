class CreateVariants < ActiveRecord::Migration[6.1]
  def change
    create_table :variants do |t|
      t.string :brand
      t.float :price
      t.references :product
      t.timestamps
    end
  end
end
