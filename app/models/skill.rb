class Skill < ActiveRecord::Base
  attr_accessible :add_skill
  belongs_to :user
end
