class CreateDecodes < ActiveRecord::Migration[5.2]
  def change
    create_table :decodes do |t|
      t.string :bitlink
      t.string :user_agent
      t.string :timestamp
      t.string :referrer
      t.string :remote_ip

      t.timestamps
    end
  end
end
