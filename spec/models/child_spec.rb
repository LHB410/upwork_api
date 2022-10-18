require 'rails_helper'

RSpec.describe Child, type: :model do
  family = FactoryBot.create(:family)
  child = FactoryBot.create(:child, family: family)
  it { should validate_presence_of(:sex) }
end
