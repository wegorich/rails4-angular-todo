class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name, null:false
      t.integer :priority
      t.date :due_date
      t.integer :position
      t.boolean :done, null:false, default:false
      t.belongs_to :list, index: true, null:false

      t.timestamps
    end
  end
end
