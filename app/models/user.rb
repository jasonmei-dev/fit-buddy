class User < ApplicationRecord
  has_secure_password

  has_many :workouts
  has_many :exercises, through: :workouts
  has_many :exercise_entries, through: :workouts

  # validates :username, presence: true
  # validates :username, uniqueness: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates :password, length: {minimum: 6}

  # def self.find_or_create_by_omniauth(auth_hash)
  #   self.where(email: auth_hash[:info][:email]).first_or_create do |user|
  #     user.username = auth_hash[:extra][:raw_info][:login]
  #     user.password = SecureRandom.hex
  #   end
  # end
  
  def self.find_or_create_by_omniauth(auth_hash)
    self.where(provider: auth_hash.provider, uid: auth_hash.uid).first_or_create do |user|
      user.provider = auth_hash.provider
      user.uid = auth_hash.uid
      user.email = auth_hash.info.email
      user.password = SecureRandom.hex
    end
  end
end
