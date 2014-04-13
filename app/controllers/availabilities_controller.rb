class AvailabilitiesController < ApplicationController
  def new
    @user = current_user
    @availability = @user.availabilities.build
  end

  def create
    new_availability = params.require(:availability).permit(:day, :time)
    @user = current_user
    @availability = @user.availabilities.create(new_availability)
    redirect_to current_user
  end
end
