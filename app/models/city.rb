class City < ActiveRecord::Base
  has_many :neighborhoods
  has_many :listings, :through => :neighborhoods

  include Reservable

  def city_openings(start_date, end_date)
    # return all of the listing objects that are available in the entire span inputted. 
    openings(start_date, end_date)
  end

end

