class Title < ApplicationRecord
  belongs_to :user
  has_many :rosters
  has_many :block_sessions, through: :rosters

  validates :class_title, presence: true

end
