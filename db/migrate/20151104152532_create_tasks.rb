class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.number :priority
      t.date :due_date
      t.boolean :is_completed_toggle

      t.timestamps
    end
  end
end
