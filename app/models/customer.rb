class Customer < ActiveRecord::Base
has_many :reviews
has_many :restaurants, through: :reviews

def full_name(first_name, last_name)
    # return "#{first_name: self.first_name}" + "#{last_name: self.last_name}"
  return "#{self.first_name}" + " #{self.last_name}"
end

def favorite_restaurant
    self.reviews.max_by { |r| r.star_rating}
end

def add_review(restaurant, rating)
    Review.create(restaurant: self.restaurant.id, rating: rating)

end

def delete_reviews(restaurant)
    destory= Review.destory_by(restaurant_id: restaurant.id)
end

end