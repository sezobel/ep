class Profile < ActiveRecord::Base
  belongs_to :user
  belongs_to :user
  has_many :contacts
end
