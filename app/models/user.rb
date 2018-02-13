class User < ApplicationRecord

	attr_accessor :sign_up_code

  validates :sign_up_code,
    on: :create,
    presence: true,
    inclusion: { in: ["THP2018_Mati"] }

	has_many :gossips
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



  validates :username, presence: true, length: { maximum: 20 } 


end
