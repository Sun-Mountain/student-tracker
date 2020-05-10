class Title < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :sessions

  validates :class_title, presence: true

end
