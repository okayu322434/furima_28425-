class Good < ApplicationRecord
 extend ActiveHash::Associations::ActiveRecordExtensions
 belongs_to_active_hash :category
 belongs_to_active_hash :status 
 belongs_to_active_hash :delivery
 belongs_to_active_hash :area
 belongs_to_active_hash :shippingdate
 has_one_attached :image
 belongs_to :user

with_options presence: true do
  validates :image
  validates :name
  validates :comment
  validates :price
  validates :price, :numericality => { :greater_than => 299 }
  validates :price, :numericality => { :less_than => 10000000 }
end

with_options numericality: { other_than: 0, message: 'Select' } do
  validates :category_id
  validates :status_id
  validates :delivery_id
  validates :area_id
  validates :shippingdate_id
end

end
