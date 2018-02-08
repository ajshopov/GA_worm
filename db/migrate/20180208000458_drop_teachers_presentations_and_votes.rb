class DropTeachersPresentationsAndVotes < ActiveRecord::Migration[5.1]
  def change
    drop_table :votes
    drop_table :presentations
    drop_table :teachers
  end
end
