class Title < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :sessions

  validates :class_title, presence: true

  def remove_session(sesh)
    @title.sessions.delete(sesh)
  end
end
