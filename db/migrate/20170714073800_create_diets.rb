class CreateDiets < ActiveRecord::Migration
  def change
    create_table :diets do |t|
      t.string :diet_title
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
