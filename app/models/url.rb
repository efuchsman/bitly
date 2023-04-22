class Url < ApplicationRecord
  validates_presence_of :long_url
  validates_presence_of :domain
  validates_presence_of :url_hash

  has_many :decodes, primary_key: :url_hash, foreign_key: :bitlink_hash
end
