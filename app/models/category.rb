class Category < ActiveRecord::Base
  
  mount_uploader :image, PictureUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :products
  #attr_accessible :name, :id, :image

end
