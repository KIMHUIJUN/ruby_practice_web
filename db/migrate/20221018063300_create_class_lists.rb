class CreateClassLists < ActiveRecord::Migration[5.2]
  def change
    create_table :class_lists do |t|
      t.string :c_name
      t.integer :c_account

      t.timestamps
    end
  end
end
