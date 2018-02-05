class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.timestampz :vote_moment
      t.int :vote_value
      t.inet :ip_address

      t.timestamps
    end
  end
end
