class User < ApplicationRecord
  has_secure_password

  has_many :workouts
  has_many :exercises, through: :workouts
  has_many :exercise_entries, through: :workouts

  validates :username, presence: true
  validates :username, uniqueness: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates :password, length: {minimum: 6}

  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods
end
