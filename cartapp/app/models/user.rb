class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
<<<<<<< HEAD
=======
         
  has_one :billing
  has_one :shipping
  has_many :orders
  accepts_nested_attributes_for :billing, :shipping
>>>>>>> secondaryrep/master
end
