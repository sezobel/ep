require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :name => "MyString",
      :number => "MyString",
      :email => "MyString",
      :user => nil,
      :city => "MyString",
      :state => "MyString",
      :zip_code => "MyString",
      :university => "MyString",
      :degree_of_study => "MyString",
      :year => 1,
      :current_employer => "MyString",
      :title => "MyString",
      :duties => "MyText",
      :user => nil
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input#profile_name[name=?]", "profile[name]"

      assert_select "input#profile_number[name=?]", "profile[number]"

      assert_select "input#profile_email[name=?]", "profile[email]"

      assert_select "input#profile_user_id[name=?]", "profile[user_id]"

      assert_select "input#profile_city[name=?]", "profile[city]"

      assert_select "input#profile_state[name=?]", "profile[state]"

      assert_select "input#profile_zip_code[name=?]", "profile[zip_code]"

      assert_select "input#profile_university[name=?]", "profile[university]"

      assert_select "input#profile_degree_of_study[name=?]", "profile[degree_of_study]"

      assert_select "input#profile_year[name=?]", "profile[year]"

      assert_select "input#profile_current_employer[name=?]", "profile[current_employer]"

      assert_select "input#profile_title[name=?]", "profile[title]"

      assert_select "textarea#profile_duties[name=?]", "profile[duties]"

      assert_select "input#profile_user_id[name=?]", "profile[user_id]"
    end
  end
end
