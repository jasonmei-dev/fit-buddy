class CreateExerciseEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :exercise_entries do |t|
      t.integer :workout_id
      t.integer :exercise_id
      t.integer :weight_lbs
      t.integer :sets
      t.integer :reps
      t.string :notes
      t.integer :exercise_rating

      t.timestamps
    end
  end
end
