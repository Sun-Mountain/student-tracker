class Title < ApplicationRecord
  belongs_to :user
  has_many :session_rosters, dependent: :destroy
  has_many :block_sessions, through: :session_rosters

  validates :class_title, presence: true

end
