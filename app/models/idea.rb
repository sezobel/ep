class Idea < ActiveRecord::Base
  belongs_to :profile
  belongs_to :user
end
