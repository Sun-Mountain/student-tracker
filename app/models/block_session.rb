class BlockSession < ApplicationRecord
  has_many :rosters, dependent: :destroy
  has_many :titles, through: :rosters

  def classes?
    rosters.count.zero?
  end
end
