class ProductImage < ActiveRecord::Base
  mount_uploader :image, PictureUploader
  
  belongs_to :product

  #attr_accessible :image, :product_id

end
