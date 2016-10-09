module ProductHelper
  def cloudinary__url_for(product_image)
    Cloudinary::Utils.cloudinary_url(product_image.image)
  end
end
