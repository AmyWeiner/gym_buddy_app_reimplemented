class Schedule < ActiveRecord::Base
  belongs_to :user
  belongs_to :availability
end
