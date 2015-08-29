class Restuarant < ActiveRecord::Base
	mount_uploader :image, ImageUploader
end
