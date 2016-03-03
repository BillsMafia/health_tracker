class CreateStepsTakens < ActiveRecord::Migration
  def change
    create_table :steps_takens do |t|
      t.integer :steps

      t.timestamps null: false
    end
  end
end
