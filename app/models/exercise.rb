class Exercise < ApplicationRecord
  has_many :exercise_entries
  has_many :workouts, through: :exercise_entries
  has_many :users, through: :workouts

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :category, presence: true
end
