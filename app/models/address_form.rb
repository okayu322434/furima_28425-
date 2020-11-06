class AddressForm
  include ActiveModel::Model
  attr_accessor :postcode, :prefecture_id, :city, :address, :buildeing, :phone_number,:token, :good_id ,:user_id

  with_options presence: true do
  validates :token
  validates :city
  validates :address
  validates :prefecture_id, numericality: { other_than: 0, message: "can't be blank" }
  validates :postcode, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
  validates :phone_number, format: {with: /\A\d{10,11}\z/ }
  end

  def save
    order = Order.create(good_id: good_id, user_id: user_id)
    Shipping.create(postcode: postcode, prefecture_id: prefecture_id, city: city, address: address, buildeing: buildeing, phone_number: phone_number, order_id:order.id) 
  end

end
