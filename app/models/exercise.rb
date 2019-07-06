class Exercise < ApplicationRecord
  has_many :exercise_entries
  has_many :workouts, through: :exercise_entries
  has_many :users, through: :workouts

  scope :by_category, ->(category) { where(category: category) }

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :category, presence: true

  # def self.top_rated
  #   where("avg_rating >=?", 3.5)
  # end

  def avg_rating
    self.exercise_entries.average(:exercise_rating) ? self.exercise_entries.average(:exercise_rating).round(1) : "Not Rated"
  end
end
