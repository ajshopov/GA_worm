class ChangingDatatypesOfPresentationTableColumns < ActiveRecord::Migration[5.1]
  def change
    remove_column :presentations, :start_time, :time
    remove_column :presentations, :end_time, :time
    add_column :presentations, :start_time, :datetime
    add_column :presentations, :end_time, :datetime 

  end
end
