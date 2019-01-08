class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_tehrel
      t.string :last_langley

      t.timestamps
    end
  end
end
