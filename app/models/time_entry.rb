class TimeEntry < ActiveRecord::Base
  belongs_to :project
  belongs_to :developer

  
end
