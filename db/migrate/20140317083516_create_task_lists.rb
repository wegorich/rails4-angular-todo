class CreateTaskLists < ActiveRecord::Migration
  def change
    create_table :task_lists do |t|
      t.belongs_to :user, index: true
      t.string :name, null:false

      t.timestamps
    end
  end
end
