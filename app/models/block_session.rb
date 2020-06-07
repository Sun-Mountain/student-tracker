class BlockSession < ApplicationRecord
  has_many :session_rosters, dependent: :destroy
  has_many :titles, through: :session_rosters
end
