class CreatePresentations < ActiveRecord::Migration[5.1]
  def change
    create_table :presentations, id: :uuid do |t|
      t.text :description
      t.text :metric
      t.date :date
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
