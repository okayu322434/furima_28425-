class Good < ApplicationRecord
 belongs_to :user

 extend ActiveHash::Associations::ActiveRecordExtensions
 belongs_to_active_hash :category
 belongs_to_active_hash :status 
 belongs_to_active_hash :delivery
 belongs_to_active_hash :area
 belongs_to_active_hash :shippingdate
end

