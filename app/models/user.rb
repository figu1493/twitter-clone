class User < ActiveRecord::Base

	# Attributes
  #----------------------------------------
  #

  attr_accessible :email, :name

  # Associations
  #----------------------------------------
  #

  has_many :microposts
  
end
