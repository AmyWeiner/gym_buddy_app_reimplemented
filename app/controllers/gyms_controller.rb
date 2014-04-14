class GymsController < ApplicationController
  def new
    @gym = Gym.new
  end

  def search
    city = params[:city]
    state = params[:state]
    unless params[:city].nil? || params[:state].nil?
      # get all gyms based on city/state params
      @gyms_array_hashes = Gym.gyms_near(city, state)
    end
  end

  def create
    new_gym = params.require(:gym).permit(:gym_id)
    gym_params = Gym.with_yelp_id(new_gym[:gym_id])
    @gym=Gym.new(gym_params)
    if @gym.save
      redirect_to '/gyms/new'
    end
  end

  def join_gym
    @gym = Gym.new
    gyms = Gym.all
    gym = gyms.find(params[:gym][:name])
    gym_id = gym.id
    current_user.update_columns(:gym_id => gym_id)
    redirect_to current_user
  end
end
