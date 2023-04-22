class CreateUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :urls, id: false do |t|
      t.string :long_url
      t.string :domain
      t.string :url_hash, primary_key: true

      t.timestamps
    end
  end
end
