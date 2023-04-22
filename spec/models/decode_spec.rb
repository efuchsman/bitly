require 'rails_helper'

RSpec.describe Decode, type: :model do
  it { should validate_presence_of :bitlink }
  it { should validate_presence_of :user_agent }
  it { should validate_presence_of :timestamp }
  it { should validate_presence_of :referrer }
  it { should validate_presence_of :remote_ip }
end
