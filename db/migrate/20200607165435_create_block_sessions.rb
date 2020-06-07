class CreateBlockSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :block_sessions do |t|
      t.string :name
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
