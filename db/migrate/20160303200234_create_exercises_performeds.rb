class CreateExercisesPerformeds < ActiveRecord::Migration
  def change
    create_table :exercises_performeds do |t|
      t.integer :exercise_type_id
      t.decimal :calories_burned, precision: 6, scale: 2
      t.date :date_burned

      t.timestamps null: false
    end
  end
end
