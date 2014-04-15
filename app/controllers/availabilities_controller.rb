class AvailabilitiesController < ApplicationController
  def new
    @availability = Availability.new
  end

  def create
    new_availability = params.require(:availability).permit(:day, :time)
    #@availability = Availability.create(new_availability)
    #@availability = Availability.find_or_create_by(new_availability)
    current_user.availabilities.create(new_availability)
    redirect_to current_user
  end

  def destroy
    @user = current_user
    @availability = @user.availabilities.find(params[:id])
    @availability.destroy
    redirect_to @user
  end
end


