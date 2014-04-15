class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @availabilities = @user.availabilities
  end

  def search
    @my_availabilities = current_user.availabilities
    id = current_user.id
    gym_id = current_user.gym_id
    @users = User.where.not(id: id)
    @users = @users.where(gym_id: gym_id)
  end
end
