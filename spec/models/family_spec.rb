require 'rails_helper'

RSpec.describe Family, type: :model do
  family = FactoryBot.create(:family)
  it { should validate_presence_of(:address)}
end
