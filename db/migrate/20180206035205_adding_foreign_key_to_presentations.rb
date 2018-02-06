class AddingForeignKeyToPresentations < ActiveRecord::Migration[5.1]
  def change
    add_column :presentations, :teacher_id, :uuid
    add_foreign_key :presentations, :teachers
  end
end
