require 'rails_helper'

RSpec.describe PopulationQueryService, type: :service do
  family1 = FactoryBot.create(:family)
  male1 = FactoryBot.create(:father, sex: "male", family: family1)
  female1 = FactoryBot.create(:mother, sex: "female", family: family1)
  child1_1 = FactoryBot.create(:child, sex: "male", family: family1)
  child1_2 = FactoryBot.create(:child, sex: "male", family: family1)
  family2 = FactoryBot.create(:family)
  male2 = FactoryBot.create(:father, sex: "male", family: family2)
  female2 = FactoryBot.create(:mother, sex: "female", family: family2)
  child2_1 = FactoryBot.create(:child, sex: "female", family: family2)
  child2_2 = FactoryBot.create(:child, sex: "male", family: family2)

  describe "#females_count" do
    it "counts total amount of females in population" do
      population_service = PopulationQueryService.new
      expect(population_service.females_count).to eq(4)
    end
  end

   describe "#males_count" do
    it "counts total amount of males in population" do
      population_service = PopulationQueryService.new
      expect(population_service.males_count).to eq(5)
    end
  end

end


