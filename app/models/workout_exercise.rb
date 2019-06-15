class WorkoutExercise < ApplicationRecord
  belongs_to :workout
  belongs_to :exercise

  validates :workout_id, presence: true
  validates :exercise_id, presence: true
  validates :sets, presence: true
  validates :reps, presence: true
  validates :exercise_rating, inclusion: {in: [1, 2, 3, 4, 5]}
end
