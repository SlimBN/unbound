class Continent < ActiveRecord::Base
  attr_accessible :name, :slug

  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :countries

end
