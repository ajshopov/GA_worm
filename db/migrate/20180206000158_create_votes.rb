class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes, id: :uuid do |t|
      t.datetime :vote_moment
      t.integer :vote_value
      t.inet :ip_address

      t.timestamps
    end
  end
end
