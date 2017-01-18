class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email, uniqueness: true, length: { minimum: 1, maximum: 35 }
  validates :user_name, presence: true, length: { minimum: 4, maximum: 30 },
                        uniqueness: { allow_blank: true }
  validates :number_of_group, presence: true, length: { is: 6 }

  has_many :colors
  has_one  :setting, foreign_key: 'user_id', dependent: :destroy
end
