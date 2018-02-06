class AddingForeignKeyToVotes < ActiveRecord::Migration[5.1]
  def change
    add_column :votes, :presentation_id, :uuid
    add_foreign_key :votes, :presentations
  end
end
