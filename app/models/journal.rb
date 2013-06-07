class Journal < ActiveRecord::Base
  attr_accessible :affiche, :continent_id, :country_id, :description, :state_id, :title, :user_id

  extend FriendlyId
  friendly_id :title, use: :slugged

  mount_uploader :affiche, AfficheUploader

  belongs_to :user
  belongs_to :country
  belongs_to :continent
  belongs_to :state_id

  has_many :issues

end
