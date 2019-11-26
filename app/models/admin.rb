class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    enum os_category: { iOS: 0, macOS: 1}
    enum price_category: { free: 0, pay: 1}
end


#   rails consoleからのID作成テンプレ
#   rails console
#   admin = admin.new
#   admin.email = 'admin@example.com'
#   admin.password = 'password'
#   admin.save