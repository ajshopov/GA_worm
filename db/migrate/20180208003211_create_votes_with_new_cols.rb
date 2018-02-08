class CreateVotesWithNewCols < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.integer :vote_value
      t.text :ip_region
      t.references :presentation, foreign_key: true
    end
  end
end
