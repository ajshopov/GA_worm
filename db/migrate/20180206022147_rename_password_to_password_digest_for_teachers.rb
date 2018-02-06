class RenamePasswordToPasswordDigestForTeachers < ActiveRecord::Migration[5.1]
  def change
    rename_column :teachers, :password, :password_digest 
  end
end
