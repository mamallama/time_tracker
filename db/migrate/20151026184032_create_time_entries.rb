class CreateTimeEntries < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
      t.integer :duration
      t.integer :project_id
      t.integer :developer_id
      t.datetime :date

      t.timestamps null: false
    end
  end
end
