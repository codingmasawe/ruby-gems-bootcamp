class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :courses
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def to_s
    email
  end
end
