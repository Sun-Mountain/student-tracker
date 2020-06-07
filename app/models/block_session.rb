class BlockSession < ApplicationRecord
  has_many :rosters
  has_many :titles, through: :rosters
end
