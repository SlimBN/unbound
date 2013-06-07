class Article < ActiveRecord::Base
  attr_accessible :category_id, :content, :cover, :is_deleted, :is_draft, :slug, :title, :user_id, :featured, :superfeatured, :size

  mount_uploader :cover, CoverUploader

  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :category
  belongs_to :user

  

end
