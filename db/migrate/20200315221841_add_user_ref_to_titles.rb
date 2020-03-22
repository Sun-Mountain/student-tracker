class AddUserRefToTitles < ActiveRecord::Migration[6.0]
  def change
    add_reference :titles, :user, null: false, foreign_key: true
  end
end
