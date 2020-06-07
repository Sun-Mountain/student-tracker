class ChangeRostersToSessionRosters < ActiveRecord::Migration[6.0]
  def change
    rename_table :rosters, :session_rosters
  end
end
