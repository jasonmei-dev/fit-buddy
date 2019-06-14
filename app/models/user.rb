class User < ApplicationRecord
  has_secure_password

  has_many :workouts
  has_many :exercises, through: :workouts
  has_many :workout_exercises, through: :workouts
end
