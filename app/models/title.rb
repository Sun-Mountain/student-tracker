class Title < ApplicationRecord
  belongs_to :user
  has_many :rosters, dependent: :destroy
  has_many :block_sessions, through: :rosters

  validates :class_title, presence: true

end
