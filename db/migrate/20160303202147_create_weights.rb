class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.decimal :weight, precision: 5, scale: 2
      t.date :date_weighed

      t.timestamps null: false
    end
  end
end
