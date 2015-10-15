class Task < ActiveRecord::Base
  validates :name, :presence => true
  validates :completed, :presence => true
end
