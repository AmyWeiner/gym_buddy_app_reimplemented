class User < ActiveRecord::Base
  has_many :schedules
  has_many :availabilities, through: :schedules
  belongs_to :gym
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
