class Url < ApplicationRecord
  validates_presence_of :long_url
  validates_presence_of :domain
  validates_presence_of :url_hash

  has_many :decodes, primary_key: :url_hash, foreign_key: :bitlink_hash

  def self.clicks_per_year(year)
    joins(:decodes)
    .where("urls.url_hash=decodes.bitlink_hash")
    .where("decodes.click_year = ?", year)
    .select('long_url, COUNT(decodes) AS clicks')
    .group('long_url')
    .order(clicks: :desc)
    .map { |url| "#{url.long_url}: #{url.clicks}" }
  end
end
