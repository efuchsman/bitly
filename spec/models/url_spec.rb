require 'rails_helper'

RSpec.describe Url, type: :model do
  describe "Relationships" do
    it { should have_many :decodes}

  end

  describe "Validations" do
    it { should validate_presence_of :long_url }
    it { should validate_presence_of :domain }
    it { should validate_presence_of :url_hash }
  end

  describe "Class Methods" do

    let!(:url_1) { Url.create(long_url: "https://google.com/", domain: "bit.ly", url_hash: "31Tt55y")}

    let!(:url_2) { Url.create(long_url: "https://github.com/", domain: "bit.ly", url_hash: "2kJO0qS")}

    let!(:decode_1) {Decode.create(id: 1, bitlink: "http://bit.ly/31Tt55y", user_agent: "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;...", timestamp: "2020-02-15T00:00:00Z", referrer: "t.co", remote_ip: "4.14.247.63", bitlink_hash: "31Tt55y", click_year: "2020")}

    let!(:decode_2) {Decode.create(id: 2, bitlink: "http://bit.ly/31Tt55y", user_agent: "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;...", timestamp: "2021-02-15T00:00:00Z", referrer: "t.co", remote_ip: "4.14.247.63", bitlink_hash: "31Tt55y", click_year: "2021")}

    let!(:decode_3) {Decode.create(id: 3, bitlink: "http://bit.ly/31Tt55y", user_agent: "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;...", timestamp: "2021-02-15T00:00:00Z", referrer: "t.co", remote_ip: "4.14.247.63", bitlink_hash: "31Tt55y", click_year: "2021")}

    let!(:decode_4) {Decode.create(id: 4, bitlink: "http://bit.ly/2kJO0qS", user_agent: "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;...", timestamp: "2021-02-15T00:00:00Z", referrer: "t.co", remote_ip: "4.14.247.63", bitlink_hash: "2kJO0qS", click_year: "2021")}

    describe "#clicks_per_year" do
      describe "When the user provides a year" do
        it "shows the number of clicks per domain for that year" do
          expect(Url.clicks_per_year("2021")).to eq(["https://google.com/: 2", "https://github.com/: 1"])
        end
      end
    end
  end
end
