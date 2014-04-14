class User < ActiveRecord::Base
  has_many :availabilities
  belongs_to :gym
  accepts_nested_attributes_for :availabilities
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
