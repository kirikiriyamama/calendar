class Task < ActiveRecord::Base
  attr_accessible :complete, :content, :schedule_id

  belongs_to :schedule

  validates :schedule_id,
    :presence => true
  validates :content,
    :presence => true,
    :length => { :maximum => 255, :allow_blank => true }
  validates :complete,
    :presence => true
end
