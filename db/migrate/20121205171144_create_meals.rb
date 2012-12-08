class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :foodtype
      t.string :foodname
      t.date :mealdate
      t.timestamps
    end
  end
end
