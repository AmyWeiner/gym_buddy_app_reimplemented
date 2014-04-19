class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @availabilities = @user.availabilities
  end

  def search
    @availabilities = current_user.availabilities
    @availabilities_ids = []
    @availabilities.each { |availability| @availabilities_ids << availability.id }
    @gym_users = User.get_same_gym_users(current_user.gym_id, current_user.id)
    #@available_gym_users = @gym_users.joins(:availabilities).where("availabilities.id = ?", @availabilities_ids)
  end

  def contact
    @buddy = User.find(params[:id])
  end
end
