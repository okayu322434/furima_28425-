class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :nickname, presence: true
         validates :email, presence: true, uniqueness: true

         validates :encrypted_password, presence: true, length: { minimum: 6 }
         validates :first_name, presence: true
         validates :last_name, presence: true
         validates :first_name_kana, presence: true,
                    format: {
                    with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/,
                    message: "全角カタカナのみで入力して下さい"}

         validates :last_name_kana, presence: true,
                    format: {
                    with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/,
                    message: "全角カタカナのみで入力して下さい"}
         validates :birthday, presence: true

end
