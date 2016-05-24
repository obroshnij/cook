# encoding: utf-8

class PictureUploader < CarrierWave::Uploader::Base
  
  include Cloudinary::CarrierWave

  process tags: ['image']

  # def default_url
  #   'http://res.cloudinary.com/dm8mr5ryk/image/upload/v1450970073/default_slider.jpg'
  # end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
