class Decode < ApplicationRecord
  validates_presence_of :bitlink
  validates_presence_of :user_agent
  validates_presence_of :timestamp
  validates_presence_of :referrer
  validates_presence_of :remote_ip
end
