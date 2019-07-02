class Workout < ApplicationRecord
  belongs_to :user
  has_many :exercise_entries
  has_many :exercises, through: :exercise_entries

  validates :name, presence: true
  validates :duration_mins, presence: true
  validates :user_id, presence: true
  validates :share_status, inclusion: {in: [true, false]}
end
