class Product < ActiveRecord::Base
  mount_uploader :image, PictureUploader
  
  belongs_to :category
  has_many :product_images
  #attr_accessible :name, :id, :image
  accepts_nested_attributes_for :product_images

end
