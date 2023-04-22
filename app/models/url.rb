class Url < ApplicationRecord

  validates_presence_of :long_url
  validates_presence_of :domain
  validates_presence_of :url_hash
end
