class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :email
      t.string :password_digest
      t.integer :duration
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
