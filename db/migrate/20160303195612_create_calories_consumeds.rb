class CreateCaloriesConsumeds < ActiveRecord::Migration
  def change
    create_table :calories_consumeds do |t|
      t.decimal :consumed, precision: 6, scale: 2

      t.timestamps null: false
    end
  end
end
