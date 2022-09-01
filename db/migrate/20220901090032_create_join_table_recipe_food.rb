class CreateJoinTableRecipeFood < ActiveRecord::Migration[6.1]
  def change
    create_join_table :recipes, :foods, table_name: :ingredients do |t|
      t.integer :quantity, null: false, index: true
      t.index [:recipe_id, :food_id]
      t.index [:food_id, :recipe_id]

      t.timestamps
    end
  end
end
