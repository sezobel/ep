FactoryGirl.define do
  factory :idea, :class => 'Ideas' do
    profile nil
project_name "MyString"
project_description "MyText"
user nil
business_plan "MyText"
  end

end
