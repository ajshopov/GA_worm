class CreatePresentationsWithNewCols < ActiveRecord::Migration[5.1]
  def change
    create_table :presentations do |t|
      t.text :description
      t.text :metric
      t.datetime :date
      t.text :region
      t.references :teacher, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.uuid :uuid
    end
  end
end
