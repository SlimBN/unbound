class Job < ActiveRecord::Base
  attr_accessible :description, :name


  belongs_to :user
  
end
