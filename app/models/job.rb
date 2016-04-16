class Job < ActiveRecord::Base
  belongs_to :type
  belongs_to :user
  
  validates :name, :overview, :type_id, :user_id
  
  scope :filled, -> {where('designer = ?', "false")}
end
