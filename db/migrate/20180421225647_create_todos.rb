class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.boolean :checked
      t.string :description

      t.timestamps
    end
  end
end
