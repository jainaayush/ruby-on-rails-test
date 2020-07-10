class CreateOptionValueVariations < ActiveRecord::Migration[5.2]
  def change
    create_table :option_value_variations do |t|
      t.references :option_value, foreign_key: true
      t.references :variation, foreign_key: true

      t.timestamps
    end
  end
end
