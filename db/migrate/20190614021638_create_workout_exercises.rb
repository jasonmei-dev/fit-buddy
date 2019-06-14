class CreateWorkoutExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :workout_exercises do |t|
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
