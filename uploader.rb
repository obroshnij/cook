# production:
#   cloud_name: "dj4vgvqax"
#   api_key: "677647541622791"
#   api_secret: "VeQroE1P_m3ubcmulyCrb3pMOF0"
require 'carrierwave'
require 'cloudinary'

auth = {
  cloud_name: "dj4vgvqax",
  api_key:    "677647541622791",
  api_secret: "VeQroE1P_m3ubcmulyCrb3pMOF0"
}

Cloudinary.config(auth)

records = Dir.glob("/Volumes/CES_X86X64F\ 1/ex1/**/*")
s = 0
records.each do |image_path|
  key = image_path.scan(/\/ex1\/(.*?)\.jpg/)[0][0]
  Cloudinary::Uploader.upload(image_path, public_id: key)
  sleep(1)
  s = s+1
  puts("Uploaded #{s}, #{key}")
end
