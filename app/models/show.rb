class Show < ActiveRecord::Base

  def self.highest_rating
     Show.maximum(:rating)
  end

  def self.most_popular_show
    highest_rating = Show.highest_rating
    Show.find_by(rating: highest_rating)
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    least = Show.lowest_rating
    Show.find_by(rating: least)
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.where("rating > ?", 5)
  end

  def self.shows_by_alphabetical_order
    Show.order(name: :asc)
  end
































  # def self.highest_rating
  #   Show.maximum(:rating)
  # end

  # def self.most_popular_show
  #   highest_rating = Show.highest_rating
  #   Show.find_by(rating: highest_rating)
  # end

  # def self.lowest_rating
  #   Show.minimum(:rating)
  # end

  # def self.least_popular_show
  #   lowest_rating = Show.lowest_rating
  #   Show.find_by(rating: lowest_rating)
  # end

  # def self.ratings_sum
  #   Show.sum(:rating)
  # end

  # def self.popular_shows
  #   Show.where("rating > 5")
  # end

  # def self.shows_by_alphabetical_order
  #   Show.order(name: :asc)
  # end






































  # def self.highest_rating
  #   Show.maximum(:rating)
  # end

  # def self.most_popular_show
  #   highest_rating = Show.highest_rating
  #   Show.find_by(rating: highest_rating)
  # end

  # def self.lowest_rating
  #   Show.minimum(:rating)
  # end

  # def self.least_popular_show
  #   lowest_rating = Show.lowest_rating
  #   Show.find_by(rating: lowest_rating)
  # end

  # def self.ratings_sum
  #   Show.sum(:rating)
  # end

  # def self.popular_shows
  #   Show.where('rating > 5')
  # end

  # def self.shows_by_alphabetical_order
  #   Show.order(:name)
  # end

end

# bundle exec rake db:create_migration NAME=add_season_to_shows

# bundle exec rake db:migrate