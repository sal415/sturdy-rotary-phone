class Customer < ActiveRecord::Base
has_many :reviews
has_many :restaurants, through: :reviews

def full_name(first_name, last_name)
    # return "#{first_name: self.first_name}" + "#{last_name: self.last_name}"
  return "#{self.first_name}" + " #{self.last_name}"
end

def favorite_restaurant
end

def add_review(restaurant, rating)
    Review.create(restaurant: self.restaurant.id, rating: rating)

end

def delete_reviews(restaurant)
    restaurant.destroy_all
end

end