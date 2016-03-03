class CreateStepsTakens < ActiveRecord::Migration
  def change
    create_table :steps_takens do |t|
      t.integer :steps_taken
      t.date :date_walked

      t.timestamps null: false
    end
  end
end
