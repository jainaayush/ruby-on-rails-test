class CreateVariations < ActiveRecord::Migration[5.2]
  def change
    create_table :variations do |t|
      t.references :product, foreign_key: true
      t.integer :quantity
      t.integer :price
      t.string :sku

      t.timestamps
    end
  end
end
