class CustomerFeedback < ActiveRecord::Base
  mount_uploader :feedback_image, PictureUploader

end
