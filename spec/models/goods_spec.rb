require 'rails_helper'

RSpec.describe Good, type: :model do
  describe '#create' do
    before do
      @good = FactoryBot.build(:good)
      @good.image = fixture_file_upload('public/images/test_image.png')
    end

    it "出品ができること" do
      expect(@good).to be_valid
    end

    it 'imageが存在していれば保存できること' do
      @good.image = nil
      @good.valid?
      expect(@good.errors.full_messages).to include("Image can't be blank")
    end
    
    it "nameが空では登録できないこと" do
      @good.name = nil
      @good.valid?
      expect(@good.errors.full_messages).to include("Name can't be blank")
    end

    it "commentが空では登録できないこと" do
      @good.comment = nil
      @good.valid?
      expect(@good.errors.full_messages).to include("Comment can't be blank")
    end

    it "priceが空では登録できないこと" do
      @good.price = nil
      @good.valid?
      expect(@good.errors.full_messages).to include("Price can't be blank")
    end

    it "category_idが空では登録できないこと" do
      @good.category_id = nil
      @good.valid?
      expect(@good.errors.full_messages).to include("Category Select")
    end

    it "status_idが空では登録できないこと" do
      @good.status_id = nil
      @good.valid?
      expect(@good.errors.full_messages).to include("Status Select")
    end

    it "delivery_idが空では登録できないこと" do
      @good.delivery_id = nil
      @good.valid?
      expect(@good.errors.full_messages).to include("Delivery Select")
    end

    it "area_idが空では登録できないこと" do
      @good.area_id = nil
      @good.valid?
      expect(@good.errors.full_messages).to include("Area Select")
    end

    it "shippingdate_idが空では登録できないこと" do
      @good.shippingdate_id = nil
      @good.valid?
      expect(@good.errors.full_messages).to include("Shippingdate Select")
    end

    it "shippingdate_idが空では登録できないこと" do
      @good.shippingdate_id = nil
      @good.valid?
      expect(@good.errors.full_messages).to include("Shippingdate Select")
    end

    it 'priceは¥300以上であること' do
      @good.price = "100" 
      @good.valid?
      expect(@good.errors.full_messages).to include("Price must be greater than 299")
    end

    it 'priceは¥9,999,999以下であること' do
      @good.price = "10000000" 
      @good.valid?
      expect(@good.errors.full_messages).to include("Price must be less than 10000000")
    end


end


# 出品ができること

# - 画像は1枚必須であること(ActiveStorageを使用すること)
# - 商品名が必須であること
# - 商品の説明が必須であること
# - カテゴリーの情報が必須であること
# - 商品の状態についての情報が必須であること
# - 配送料の負担についての情報が必須であること
# - 発送元の地域についての情報が必須であること
# - 発送までの日数についての情報が必須であること
# - 価格についての情報が必須であること
# - 価格の範囲が、¥300~¥9,999,999の間であること



# require 'rails_helper'

# RSpec.describe User, type: :model do
#   describe '#create' do
#     before do
#       @user = FactoryBot.build(:user)
#     end

#     it "nicknameとemail、passwordとpassword_confirmationが存在すれば登録できること" do
#       expect(@user).to be_valid
#     end

#     it "nicknameが空では登録できないこと" do
#       @user.nickname = nil
#       @user.valid?
#       expect(@user.errors.full_messages).to include("Nickname can't be blank")
#     end

#     it "emailが空では登録できないこと" do
#       @user.email = nil
#       @user.valid?
#       expect(@user.errors.full_messages).to include("Email can't be blank")
#     end

#     it "重複したemailが存在する場合登録できないこと" do
#       @user.save
#       another_user = FactoryBot.build(:user, email: @user.email)
#       another_user.valid?
#      expect(another_user.errors.full_messages).to include("Email has already been taken")
#     end

#     it "passwordが空では登録できないこと" do
#       @user.password = nil
#       @user.valid?
#       expect(@user.errors.full_messages).to include("Password can't be blank")
#     end

#     it "passwordが存在してもpassword_confirmationが空では登録できないこと" do
#       @user.password_confirmation = ""
#       @user.valid?
#       expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
#     end

#     it "passwordが存在してもencrypted_passwordがない場合は登録できないこと" do
#       @user.password_confirmation = ""
#       @user.valid?
#       expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
#     end

#     it "passwordが7文字以上であれば登録できること" do
#       @user.password = "1234567"
#       @user.password_confirmation = "1234567"
#       expect(@user).to be_valid
#     end

#     it "passwordが6文字以下であれば登録できないこと" do
#       @user.password = "12345"
#       @user.password_confirmation = "12345"
#       @user.valid?
#       expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
#     end

#     it "first_nameが空では登録できないこと" do
#       @user.first_name = nil
#       @user.valid?
#       expect(@user.errors.full_messages).to include("First name can't be blank")
#     end

#     it "first_name_kanaが空では登録できないこと" do
#       @user.first_name_kana = nil
#       @user.valid?
#       expect(@user.errors.full_messages).to include("First name kana can't be blank")
#     end

#     it "last_nameが空では登録できないこと" do
#       @user.last_name = nil
#       @user.valid?
#       expect(@user.errors.full_messages).to include("Last name can't be blank")
#     end

#     it "last_name_kanaが空では登録できないこと" do
#       @user.last_name_kana = nil
#       @user.valid?
#       expect(@user.errors.full_messages).to include("Last name kana can't be blank")
#     end

#     it 'first_nameが全角入力でなければ登録できないこと' do
#       @user.first_name = "ｱｲｳｴｵ" 
#       @user.valid?
#       expect(@user.errors.full_messages).to include("First name is invalid")
#     end

#     it 'last_nameが全角入力でなければ登録できないこと' do
#       @user.last_name = "ｱｲｳｴｵ" 
#       @user.valid?
#       expect(@user.errors.full_messages).to include("Last name is invalid")
#     end

#     it 'first_name_kanaが全角カタカナでなければ登録できないこと' do
#       @user.first_name_kana = "あいうえお"
#       @user.valid?
#       expect(@user.errors.full_messages).to include("First name kana is invalid")
#     end

#     it 'last_name_kanaが全角カタカナでなければ登録できないこと' do
#       @user.last_name_kana = "あいうえお"
#       @user.valid?
#       expect(@user.errors.full_messages).to include("Last name kana is invalid")
#     end

#     it "birthdayが空では登録できないこと" do
#       @user.birthday = nil
#       @user.valid?
#       expect(@user.errors.full_messages).to include("Birthday can't be blank")
#     end

#     it "emailの中に＠が含まれていなければ登録できない" do
#       @user.email = include"@"
#       @user.valid?
#       expect(@user.errors.full_messages).to include("Email is invalid")
#           end
#   end

end