class User < ApplicationRecord
  has_secure_password

  has_many :workouts
  has_many :exercises, through: :workouts
  has_many :exercise_entries, through: :workouts

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates :password, length: { minimum: 6 }
  
  def self.find_or_create_by_omniauth(auth_hash)
    self.where(provider: auth_hash.provider, uid: auth_hash.uid).first_or_create do |user|
      user.provider = auth_hash.provider
      user.uid = auth_hash.uid
      user.email = auth_hash.info.email
      user.first_name = auth_hash.info.first_name
      user.last_name = auth_hash.info.last_name
      user.password = SecureRandom.hex
    end
  end

  def full_name
    @full_name = "#{self.first_name} #{self.last_name}"
  end

end
