require 'rails_helper'

RSpec.describe AddressForm, type: :model do
    before do
      @good = FactoryBot.build(:address_form)
    end

      it "postcodeが空では登録できないこと" do
        @good.postcode = nil
        @good.valid?
        expect(@good.errors.full_messages).to include("Postcode can't be blank")
      end

      it "postcodeにーが含まれていないと登録できないこと" do
        @good.postcode = "1234567" 
        @good.valid?
        expect(@good.errors.full_messages).to include("Postcode is invalid. Include hyphen(-)")
      end


      it "cityが空では登録できないこと" do
        @good.city = nil
        @good.valid?
        expect(@good.errors.full_messages).to include("City can't be blank")
      end

      it "addressが空では登録できないこと" do
        @good.address = nil
        @good.valid?
        expect(@good.errors.full_messages).to include("Address can't be blank")
      end

      it "prefecture_idが空では登録できないこと" do
        @good.prefecture_id = nil
        @good.valid?
        expect(@good.errors.full_messages).to include("Prefecture can't be blank")
      end

      it "prefecture_idが0の時は登録できないこと" do
        @good.prefecture_id = "0"
        @good.valid?
        expect(@good.errors.full_messages).to include("Prefecture can't be blank")
      end

      it "tokenが空では登録できないこと" do
        @good.token = nil
        @good.valid?
        expect(@good.errors.full_messages).to include("Token can't be blank")
      end

      it "phone_numberが空では登録できないこと" do
        @good.phone_number = nil
        @good.valid?
        expect(@good.errors.full_messages).to include("Phone number can't be blank")
      end

      it "phone_numberにーが含まれると登録できないこと" do
        @good.phone_number = "123-4567-8901" 
        @good.valid?
        expect(@good.errors.full_messages).to include("Phone number is invalid")
      end

end
