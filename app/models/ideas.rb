class Ideas < ActiveRecord::Base
  belongs_to :profile
  belongs_to :user
end
