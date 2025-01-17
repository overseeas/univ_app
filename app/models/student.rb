class Student < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  has_secure_password

  has_many :enrollments
  has_many :courses, through: :enrollments
end
