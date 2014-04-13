class Gym < ActiveRecord::Base
  has_many :users

  def self.gyms_near(city, state)
    # construct a client instance
    client = Yelp::Client.new

    include Yelp::V2::Search::Request

    request = Location.new(:term => "gyms", :city => "#{city}", :state => "#{state}")
    @response = client.search(request)
    businesses = []
    @response["businesses"].each do |business|
      businesses.push(select_attrs(business))
    end
    businesses
  end

  def self.with_yelp_id(yelp_id)
     client = Yelp::Client.new

    include Yelp::V2::Business::Request

    request = Id.new(:yelp_business_id => yelp_id)
    @response = client.search(request)
    select_attrs(@response)
  end

private

  def self.select_attrs(business)
     gym = {}
     gym[:yelp_id] = business["id"]
     gym[:name] = business["name"]
     gym[:street] = business["location"]["address"][0]
     gym[:city] = business["location"]["city"]
     gym[:state] = business["location"]["state_code"]
     gym[:zip_code] = business["location"]["postal_code"]
    return gym
  end
  
end
