class AddRegionColumnToPresentations < ActiveRecord::Migration[5.1]
  def change
    add_column :presentations, :region, :text
  end
end
