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

  def buddy?(user)
    # get array of current user's buddies
    # check to see if this user is in the array
    # return result
    buddy = user
    buddies = current_user.buddies
    return buddies.include?(buddy)
  end
end
