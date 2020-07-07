class Show < ActiveRecord::Base

    def self.highest_rating
        self.maximum(:rating) # or
        # self.maximum("rating")
    end

    def self.most_popular_show
        self.where("rating = ?", self.highest_rating)[0]
        # binding.pry
    end

    def self.lowest_rating
        self.minimum(:rating)
    end

    def self.least_popular_show
        self.where("rating = ?", self.lowest_rating)[0]
    end

    def self.ratings_sum
        self.sum(:rating)
    end

    def self.popular_shows
        Show.where("rating > ?", 5) # or
        # Show.where("rating > 5")
    end

    def self.shows_by_alphabetical_order
        Show.order('name') # or
        # Show.order(name: :asc)
    end

end