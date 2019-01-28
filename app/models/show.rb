require 'pry'
class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum("rating")
  end

  def self.most_popular_show
    show = Show.order(':rating').first
    show
  end

  def self.lowest_rating_show
    show = Show.order(':rating').first
    show
  end

end
