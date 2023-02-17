class CreateTodoCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :todo_categories do |t|
      t.references :to_do, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
