class Product < ActiveRecord::Base

  attr_accessible :title, :description, :price, :size, :care, :is_new, :make, :material, :slug

  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, presence: true
  validates :price, presence: true, :numericality => true
  validates :size, presence: true, :numericality => true

end
