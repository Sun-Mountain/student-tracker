class Title < ApplicationRecord
  belongs_to :user

  validates :class_title, presence: true

end
