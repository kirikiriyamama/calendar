class Task < ActiveRecord::Base
  attr_accessible :complete, :content, :schedule_id
  belongs_to :schedule
end
