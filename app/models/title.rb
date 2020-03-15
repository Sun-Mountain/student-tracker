class Title < ApplicationRecord
  validates :class_title, uniqueness: true, presence: true

end
