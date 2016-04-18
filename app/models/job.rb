class Job < ActiveRecord::Base
  belongs_to :type
  belongs_to :user
  
  validates :name, :overview, :type_id, presence: true
  
  scope :open, -> {where('filled = ?', "false")}
end
