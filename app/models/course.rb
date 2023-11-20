class Course < ApplicationRecord
  validates :name, :value, presence: true
end
