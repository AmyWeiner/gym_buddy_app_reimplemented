class BuddyshipsController < ApplicationController
  def create
    @buddyship = current_user.buddyships.build(:buddy_id => params[:buddy_id])
    if @buddyship.save
      flash[:notice] = "Buddy successfully added"
      redirect_to current_user
    else
      flash[:error] = "Unable to add buddy"
      render 'users/search'
    end
  end

  def destroy
    @buddyship = current_user.buddyships.find(params[:id])
    @buddyship.destroy
    flash[:notice] = "Buddy successfully removed"
    redirect_to current_user
  end
end
