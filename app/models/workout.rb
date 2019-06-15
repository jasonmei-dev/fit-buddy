class Workout < ApplicationRecord
  belongs_to :user
  has_many :workout_exercises
  has_many :exercises, through: :workout_exercises

  validates :name, presence: true
  validates :duration_mins, presence: true
  validates :user_id, presence: true
  validates :share_status, inclusion: {in: [true, false]}
end
