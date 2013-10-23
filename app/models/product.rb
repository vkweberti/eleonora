class Product < ActiveRecord::Base

  attr_accessible :title, :description, :price, :size, :care, :is_new, :make, :material, :images_attributes

  has_many :images, :as => :attachable, :dependent => :destroy #http://lucapette.com/rails/multiple-files-upload-with-carrierwave-and-nested_form/

  accepts_nested_attributes_for :images, :allow_destroy => true, reject_if: :all_blank

  validates :title, presence: true
  validates :price, presence: true, :numericality => true
  validates :size, presence: true, :numericality => true

end
