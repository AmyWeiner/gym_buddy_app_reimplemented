class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @availabilities = @user.availabilities
  end

  def search
    @availabilities = current_user.availabilities
    @gym_users = User.get_same_gym_users(current_user.gym_id, current_user.id)
  end
end
