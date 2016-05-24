class Partner < ActiveRecord::Base
  mount_uploader :partner_image, PictureUploader

end
