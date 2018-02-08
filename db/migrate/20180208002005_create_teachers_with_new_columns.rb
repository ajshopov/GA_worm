class CreateTeachersWithNewColumns < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.text :email
      t.text :username
      t.text :password_digest
    end
  end
end
