class Schedule < ActiveRecord::Base
  has_many :tasks

  validates :deadline_at,
    :presence => true
  validates :summary,
    :presence => true,
    :length => { :maximum => 255, :allow_blank => true }
end
