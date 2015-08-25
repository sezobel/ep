class Profile < ActiveRecord::Base
  belongs_to :user
  belongs_to :user
  has_many :contacts
  has_many :ideas
  validates_formatting_of :number, using: :us_phone
  validates_formatting_of :email, using: :email
end
