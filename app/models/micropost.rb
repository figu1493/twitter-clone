class Micropost < ActiveRecord::Base
  
	# Attributes
  #----------------------------------------
  #

  attr_accessible :content, :user_id

  # Associations
  #----------------------------------------
  #

  belongs_to :user

  # Validations
  #----------------------------------------
  #

  validates :content, length: { :maximum => 140 }
end
