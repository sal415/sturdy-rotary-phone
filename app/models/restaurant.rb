class Restaurant < ActiveRecord::Base
has_many :reviews
has_many :customers, through: :reviews

def Restaurant.fanciest
    return Restaurant.all.max_by { |p| p.price}
end

def all_reviews
[
  "Review for #{self.name} by #{self.customers.first_name}: {self.reviews.star_rating} stars.",
#   "Review for {insert restaurant name} by {insert customer's full name}: {insert review star_rating} stars.",
  "Review for #{self.restaurant.name} by #{self.customer.first_name}" + "#{self.customer.last_name}" ":" "#{self.star_rating} stars."
]
end
 "Review for #{self.restaurant.name} by #{self.customer.first_name}" + "#{self.customer.last_name}" ":" "#{self.star_rating} stars."
end