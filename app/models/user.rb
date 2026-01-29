class User < ApplicationRecord
  has_many :like_unlikes, class_name: "LikeUnlike"
  has_many :comments, class_name: "Comment"
  has_many :friends, class_name: "Friend"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
     :recoverable, :rememberable, :validatable
   validates :first_name, length: { minimum: 3 }
   validates :sur_name, length: { minimum: 3 }
   validates :email, format: { with:  /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i,
    message: "only allows letters" }
    validates :password, format: { with: /\A.*(?=.*\d)(?=.*[!@#$%^&*]).{8,}*\z/,
    message: "only allows letters" }
/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/
  # validates :email, format: { with: /^\w+([\.-]?\w+)@\w+([\.-]?\w+)(\.\w{2,3})+$/,
  # message: "only allows letters" }
  # validates :Gender, presence: true, length: { minimum: 6 }
  # validates :first_name, presence: true, length: { minimum: 4 }
  # validates :sur_name, presence: true, length: { minimum: 4 }
end
