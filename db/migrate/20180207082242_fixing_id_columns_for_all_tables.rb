class FixingIdColumnsForAllTables < ActiveRecord::Migration[5.1]
  def change
    add_column :teachers, :pid, :primary_key
    change_column :presentations, :teacher_id, :integer
    remove_column :teachers, :id, :uuid
    add_column :presentations, :pid, :primary_key
    add_column :presentations, :uuid, :uuid
    remove_column :votes, :id, :uuid
    add_column :votes, :id, :primary_key
  end
end
