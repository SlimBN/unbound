class Country < ActiveRecord::Base
  attr_accessible :continent_id, :flag, :name, :slug


  extend FriendlyId
  friendly_id :name, use: :slugged


  belongs_to :continent

  has_many :states
  

end
