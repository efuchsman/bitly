require 'json'

namespace :json_load do
  task decodes: :environment do
    json = JSON.parse(File.read('./db/data/decodes.json'), symbolize_names: true)
    json.each do |row|
      Decode.find_or_create_by(row)
    end
    ActiveRecord::Base.connection.reset_pk_sequence!('decodes')
  end
end
