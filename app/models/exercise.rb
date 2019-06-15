class Exercise < ApplicationRecord
  has_many :workout_exercises
  has_many :workouts, through: :workout_exercises
  has_many :users, through: :workouts

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :category, presence: true
end
