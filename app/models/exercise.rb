class Exercise < ApplicationRecord
  belongs_to :muscle
  validates :name, :description, :duration, presence: true 
end
