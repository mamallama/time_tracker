class AddNameToDeveloper < ActiveRecord::Migration
  def change
    add_column :developers, :name, :string
  end
end
