require 'rails_helper'

RSpec.describe "Click Results Show page" do
  describe "As a visitor" do
    let!(:url_1) { Url.create(long_url: "https://google.com/", domain: "bit.ly", url_hash: "31Tt55y")}

    let!(:url_2) { Url.create(long_url: "https://github.com/", domain: "bit.ly", url_hash: "2kJO0qS")}

    let!(:decode_1) {Decode.create(id: 1, bitlink: "http://bit.ly/31Tt55y", user_agent: "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;...", timestamp: "2020-02-15T00:00:00Z", referrer: "t.co", remote_ip: "4.14.247.63", bitlink_hash: "31Tt55y", click_year: "2020")}

    let!(:decode_2) {Decode.create(id: 2, bitlink: "http://bit.ly/31Tt55y", user_agent: "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;...", timestamp: "2021-02-15T00:00:00Z", referrer: "t.co", remote_ip: "4.14.247.63", bitlink_hash: "31Tt55y", click_year: "2021")}

    let!(:decode_3) {Decode.create(id: 3, bitlink: "http://bit.ly/31Tt55y", user_agent: "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;...", timestamp: "2021-02-15T00:00:00Z", referrer: "t.co", remote_ip: "4.14.247.63", bitlink_hash: "31Tt55y", click_year: "2021")}

    let!(:decode_4) {Decode.create(id: 4, bitlink: "http://bit.ly/2kJO0qS", user_agent: "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1;...", timestamp: "2021-02-15T00:00:00Z", referrer: "t.co", remote_ip: "4.14.247.63", bitlink_hash: "2kJO0qS", click_year: "2021")}

    describe "When I visit /click_results and supply a year" do
      it "I see the click results for each long_url for the year" do
        year = "2021"
        visit "/click_results?year=#{year}"

        expect(current_path).to eq("/click_results")
        expect(page).to have_content("Results for #{year}")
        expect(page).to have_content("https://google.com/: 2")
        expect(page).to have_content("https://github.com/: 1")

        expect(url_1.long_url).to appear_before(url_2.long_url)
      end
    end

    describe "when I do not add a year" do
      it "the result is blank" do
        year = "2021"
        visit "/click_results"

        expect(current_path).to eq("/click_results")
        expect(page).to_not have_content("Results for #{year}")
      end
    end
  end
end
