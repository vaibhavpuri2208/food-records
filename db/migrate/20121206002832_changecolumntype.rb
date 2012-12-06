class Changecolumntype < ActiveRecord::Migration
  def change
  	change_column :meals, :foodtype, :integer
  end

end
