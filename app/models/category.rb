class Category < ActiveRecord::Base
  attr_accessible :description, :icon, :name, :slug


  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :articles
  has_many :journals
  
end
