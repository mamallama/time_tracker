class Project < ActiveRecord::Base
  has_many :time_entries
  belongs_to :developer

  attr_reader :project
end
