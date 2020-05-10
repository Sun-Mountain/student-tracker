class CreateJoinTableSessionsTitles < ActiveRecord::Migration[6.0]
  def change
    create_join_table :sessions, :titles do |t|
      # t.index [:session_id, :title_id]
      # t.index [:title_id, :session_id]
    end
  end
end
