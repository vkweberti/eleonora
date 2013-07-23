class Product < ActiveRecord::Base

  attr_accessible :title, :description, :price, :size, :care, :is_new, :make, :material

end
