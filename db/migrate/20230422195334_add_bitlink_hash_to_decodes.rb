class AddBitlinkHashToDecodes < ActiveRecord::Migration[5.2]
  def change
    add_column :decodes, :bitlink_hash, :string
  end
end
