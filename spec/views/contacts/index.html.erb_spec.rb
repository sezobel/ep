require 'rails_helper'

RSpec.describe "contacts/index", type: :view do
  before(:each) do
    assign(:contacts, [
      Contact.create!(
        :profile => nil,
        :user => nil,
        :name => "Name",
        :number => "Number",
        :email => "Email",
        :city => "City",
        :state => "State",
        :about_ => "MyText",
        :notes => "MyText",
        :tags => "MyText"
      ),
      Contact.create!(
        :profile => nil,
        :user => nil,
        :name => "Name",
        :number => "Number",
        :email => "Email",
        :city => "City",
        :state => "State",
        :about_ => "MyText",
        :notes => "MyText",
        :tags => "MyText"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
