class Task < ActiveRecord::Base
  belongs_to :schedule

  validates_presence_of :schedule_id
  validates_inclusion_of :complete, :in => [true, false]
  validates :content,
    :presence => true,
    :length => { :maximum => 255, :allow_blank => true }
end
