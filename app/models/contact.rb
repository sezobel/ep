class Contact < ActiveRecord::Base
  belongs_to :profile
  belongs_to :user
  validates_formatting_of :number, using: :us_phone
end
