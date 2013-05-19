class Task < ActiveRecord::Base
  attr_accessible :complete, :content, :schedule_id

  belongs_to :schedule

  validate :schedule_id,
    :presence => true
  validate :content,
    :presence => true
    :length => { :maximum => 255, :allow_blank => true }
  validate :complete,
    :presence => true
end
