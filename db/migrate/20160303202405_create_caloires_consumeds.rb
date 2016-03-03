class CreateCaloiresConsumeds < ActiveRecord::Migration
  def change
    create_table :caloires_consumeds do |t|
      t.decimal :consumed, precision: 6, scale: 2
      t.date :date_consumed

      t.timestamps null: false
    end
  end
end
