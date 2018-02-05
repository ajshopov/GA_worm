class CreatePresentations < ActiveRecord::Migration[5.1]
  def change
    create_table :presentations do |t|
      t.text :description
      t.text :metric
      t.time :date
      t.timestampZ :start_time
      t.timestampz :end_time

      t.timestamps
    end
  end
end
