require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :name => "Name",
      :number => "Number",
      :email => "Email",
      :user => nil,
      :city => "City",
      :state => "State",
      :zip_code => "Zip Code",
      :university => "University",
      :degree_of_study => "Degree Of Study",
      :year => 1,
      :current_employer => "Current Employer",
      :title => "Title",
      :duties => "MyText",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Number/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(//)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip Code/)
    expect(rendered).to match(/University/)
    expect(rendered).to match(/Degree Of Study/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Current Employer/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
