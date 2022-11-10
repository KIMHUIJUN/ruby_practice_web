class ChangeColumu < ActiveRecord::Migration[5.2]
  def change
	  rename_column(:articles, :cotent, :content)
  end
end
