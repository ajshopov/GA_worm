class ChangeVoteColumnTypeToIpRegion < ActiveRecord::Migration[5.1]
  def change
    change_column :votes, :ip_address, :text
    rename_column :votes, :ip_address, :ip_region
  end
end
