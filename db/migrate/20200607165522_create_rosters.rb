class CreateRosters < ActiveRecord::Migration[6.0]
  def change
    create_table :rosters do |t|
      t.references :title, null: false, foreign_key: true
      t.references :block_session, null: false, foreign_key: true

      t.timestamps
    end
  end
end
