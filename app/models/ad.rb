class Ad < ActiveRecord::Base
  belongs_to :member
  belongs_to :category

  # searchkick
  searchkick
  
  # paperclip
  has_attached_file :avatar, styles: { medium: "300x150>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"

  # gem money-rails
  monetize :price_cents
end
