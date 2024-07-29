class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum role: { admin: 0, competitor: 1, jury: 2 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
