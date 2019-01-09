class FixWrongColumnNamesInUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :first_tehrel, :first_name
    rename_column :users, :last_langley, :last_name
  end
end
