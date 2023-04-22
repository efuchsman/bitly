class Decode < ApplicationRecord
  validates_presence_of :bitlink
  validates_presence_of :user_agent
  validates_presence_of :timestamp
  validates_presence_of :referrer
  validates_presence_of :remote_ip

  belongs_to :url, primary_key: :url_hash, foreign_key: :bitlink_hash, required: true
end
