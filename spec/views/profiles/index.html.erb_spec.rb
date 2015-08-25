require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
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
      ),
      Profile.create!(
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
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip Code".to_s, :count => 2
    assert_select "tr>td", :text => "University".to_s, :count => 2
    assert_select "tr>td", :text => "Degree Of Study".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Current Employer".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
