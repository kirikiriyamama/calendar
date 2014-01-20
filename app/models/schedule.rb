class Schedule < ActiveRecord::Base
  has_many :tasks, dependent: :destroy
  accepts_nested_attributes_for :tasks, allow_destroy: true

  validates_presence_of :deadline_at
  validates :summary,
    :presence => true,
    :length => { :maximum => 255, :allow_blank => true }
end
