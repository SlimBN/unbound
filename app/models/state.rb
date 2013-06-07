class State < ActiveRecord::Base
  attr_accessible :country_id, :name, :slug

  belongs_to :country
  
end
