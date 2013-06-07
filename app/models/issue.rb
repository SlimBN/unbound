class Issue < ActiveRecord::Base
  attr_accessible :couverture, :edition, :journal_id, :special, :version

  mount_uploader :couverture, CouvertureUploader

  belongs_to :journal

  has_many :pages
  
end
