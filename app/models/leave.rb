class Leave < ActiveRecord::Base
  attr_accessible :date_from, :date_to, :description
end
