class Page < ActiveRecord::Base
  attr_accessible :background, :issue_id, :name, :order, :slug

  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :issue


end
