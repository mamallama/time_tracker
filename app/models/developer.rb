class Developer < ActiveRecord::Base
  has_secure_password
  validates :email, uniqueness: true
  has_many :time_entries
  has_many :projects


end
