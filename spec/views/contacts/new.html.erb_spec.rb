require 'rails_helper'

RSpec.describe "contacts/new", type: :view do
  before(:each) do
    assign(:contact, Contact.new(
      :profile => nil,
      :user => nil,
      :name => "MyString",
      :number => "MyString",
      :email => "MyString",
      :city => "MyString",
      :state => "MyString",
      :about_ => "MyText",
      :notes => "MyText",
      :tags => "MyText"
    ))
  end

  it "renders new contact form" do
    render

    assert_select "form[action=?][method=?]", contacts_path, "post" do

      assert_select "input#contact_profile_id[name=?]", "contact[profile_id]"

      assert_select "input#contact_user_id[name=?]", "contact[user_id]"

      assert_select "input#contact_name[name=?]", "contact[name]"

      assert_select "input#contact_number[name=?]", "contact[number]"

      assert_select "input#contact_email[name=?]", "contact[email]"

      assert_select "input#contact_city[name=?]", "contact[city]"

      assert_select "input#contact_state[name=?]", "contact[state]"

      assert_select "textarea#contact_about_[name=?]", "contact[about_]"

      assert_select "textarea#contact_notes[name=?]", "contact[notes]"

      assert_select "textarea#contact_tags[name=?]", "contact[tags]"
    end
  end
end
