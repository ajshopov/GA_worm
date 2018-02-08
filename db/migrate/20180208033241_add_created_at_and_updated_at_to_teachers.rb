class AddCreatedAtAndUpdatedAtToTeachers < ActiveRecord::Migration[5.1]
  def change
    add_column :teachers, :created_at, :datetime
    add_column :teachers, :updated_at, :datetime
    add_column :votes, :created_at, :datetime
    add_column :votes, :updated_at, :datetime
    add_column :presentations, :created_at, :datetime
    add_column :presentations, :updated_at, :datetime
  end
end
