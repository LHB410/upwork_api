class PopulationQueryService < Rails::Application

  def females_count
    count_by_gender("female")
  end

  def males_count
     count_by_gender("male")
  end

  private

  def count_by_gender(gender)
    Person.where(sex: gender).count
  end
end
