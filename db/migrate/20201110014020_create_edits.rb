class CreateEdits < ActiveRecord::Migration[6.0]
  def change
    create_table :edits do |t|
      t.string :name
      t.boolean :completed
      t.integer :task_id

      t.timestamps
    end
  end
end
