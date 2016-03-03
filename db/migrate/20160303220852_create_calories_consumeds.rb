class CreateCaloriesConsumeds < ActiveRecord::Migration
  def change
    create_table :calories_consumeds do |t|
      t.decimal :calories_consumed, precision: 6, scale: 2
      t.date :date_consumed

      t.timestamps null: false
    end
  end
end
