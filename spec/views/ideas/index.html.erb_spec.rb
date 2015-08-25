require 'rails_helper'

RSpec.describe "ideas/index", type: :view do
  before(:each) do
    assign(:ideas, [
      Idea.create!(
        :profile => nil,
        :project_name => "Project Name",
        :project_description => "MyText",
        :user => nil,
        :business_plan => "MyText"
      ),
      Idea.create!(
        :profile => nil,
        :project_name => "Project Name",
        :project_description => "MyText",
        :user => nil,
        :business_plan => "MyText"
      )
    ])
  end

  it "renders a list of ideas" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Project Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
