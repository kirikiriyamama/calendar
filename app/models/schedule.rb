class Schedule < ActiveRecord::Base
  attr_accessible :deadline_at, :description, :notes, :summary
  has_many :tasks
end
