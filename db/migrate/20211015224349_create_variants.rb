class CreateVariants < ActiveRecord::Migration[6.1]
  def change
    create_table :variants do |t|
      t.string :name
      t.float :price
      t.references :product
      t.timestamps
    end
  end
end
