class Schedule < ActiveRecord::Base
  attr_accessible :deadline_at, :description, :notes, :summary
end
