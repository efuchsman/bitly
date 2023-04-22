require 'json'

namespace :json_load do
  task decodes: :environment do
    json = JSON.parse(File.read('./db/data/decodes.json'), symbolize_names: true)
    json.each do |row|
      new_decode = Decode.find_or_create_by(row)
      new_decode.bitlink_hash = new_decode.bitlink.chars.to_a.last(7).join
      new_decode.save
    end
    ActiveRecord::Base.connection.reset_pk_sequence!('decodes')
  end
end
