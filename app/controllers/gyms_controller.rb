class GymsController < ApplicationController
  def add
    city = params[:city]
    state = params[:state]
    unless params[:city].nil? || params[:state].nil?
      # get all gyms based on city/state params
      @gyms_array_hashes = Gym.gyms_near(city, state)
    end
    render 'new'
  end
end
