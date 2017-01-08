# class Play < ApplicationRecord
#   belongs_to :user
#   belongs_to :category
#
#   has_attached_file :play_img, :styles=> { :play_index=> "250x350>", :play_show=> "325x475>" }, :default_url=> "/images/:style/missing.png"
#   validates_attachment_content_type :play_img, :content_type=> /\Aimage\/.*\z/
# end

# class Play < ApplicationRecord
#   belongs_to :user
#   belongs_to :category
#
#   has_attached_file :play_img,:default_url=> "/images/:style/missing.png"
#   validates_attachment_content_type :play_img, :content_type=> /\Aimage\/.*\z/
# end


 class Play < ApplicationRecord
   belongs_to :user
   belongs_to :category

   has_attached_file :play_img,styles:{ thumb: '120x120', large: '300x400' }, default_url: "/images/:style/missing.png"
   validates_attachment_content_type :play_img, content_type: /\Aimage\/.*\z/
 end



# class Play < ApplicationRecord
#   belongs_to :user
#   belongs_to :category
#
#   has_attached_file play_img, default_url: "/images/:style/missing.png"
#   validates_attachment_content_type play_img, content_type: /\Aimage\/.*\z/
# end




# class Play < ApplicationRecord
#   belongs_to :user
#   belongs_to :category
#
#   has_attached_file :play_img, :styles=> { :play_index=> "250x350>", :play_show=> "325x475>" }, default_url=> "/images/:style/missing.png"
#   validates_attachment_content_type :play_img, :content_type=> /\Aimage\/.*\z/
# end
