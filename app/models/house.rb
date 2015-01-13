class House < ActiveRecord::Base
  	if Rails.env.development?
  	has_attached_file :image, :styles => { :medium => "250x", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png",
	else
  	has_attached_file :image, :styles => { :medium => "250x", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png",
					  :storage => :dropbox,
					  :dropbox_credentials => Rails.root.join("config/dropbox.yml")
					  :path => "style/:id_:filename"
  	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	end
end
