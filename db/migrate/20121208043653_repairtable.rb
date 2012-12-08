class Repairtable < ActiveRecord::Migration
  def change
  rename_column :meals, :foodtype, :category_id
	end
end