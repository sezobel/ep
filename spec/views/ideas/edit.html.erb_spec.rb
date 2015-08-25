require 'rails_helper'

RSpec.describe "ideas/edit", type: :view do
  before(:each) do
    @idea = assign(:idea, Idea.create!(
      :profile => nil,
      :project_name => "MyString",
      :project_description => "MyText",
      :user => nil,
      :business_plan => "MyText"
    ))
  end

  it "renders the edit idea form" do
    render

    assert_select "form[action=?][method=?]", idea_path(@idea), "post" do

      assert_select "input#idea_profile_id[name=?]", "idea[profile_id]"

      assert_select "input#idea_project_name[name=?]", "idea[project_name]"

      assert_select "textarea#idea_project_description[name=?]", "idea[project_description]"

      assert_select "input#idea_user_id[name=?]", "idea[user_id]"

      assert_select "textarea#idea_business_plan[name=?]", "idea[business_plan]"
    end
  end
end
