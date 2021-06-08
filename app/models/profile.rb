class Profile < ApplicationRecord
  
  validates :message, presence: true
  validates :age, presence: true
  validates :career, presence: true
  validates :image, presence: true

  belongs_to :user
  has_one_attached :image

end
