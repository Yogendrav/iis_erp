class Leave < ActiveRecord::Base
  attr_accessible :date_from, :date_to, :description, :leave_status
end
