class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :name
      t.integer :status, index: true, default: 0
      t.datetime :completed_at

      t.timestamps
    end
  end
end
