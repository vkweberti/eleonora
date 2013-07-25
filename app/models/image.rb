class Image < ActiveRecord::Base

  attr_accessible :attachable_id, :attachable_type, :file

  mount_uploader :file, ImageUploader

  belongs_to :attachable, :polymorphic => true, :inverse_of => :images

end
