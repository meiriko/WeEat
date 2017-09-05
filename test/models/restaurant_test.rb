require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "restaurant attributes should not be empty" do
    restaurant = Restaurant.new
    assert restaurant.invalid?
    assert restaurant.errors[:name].any?
    assert restaurant.errors[:cuisine].any?
    assert restaurant.errors[:address].any?
  end

  test "restaurant rating and max delivery time should be in range" do
    restaurant = Restaurant.new(name: 'rest 1',
                                cuisine: 'italian',
                                address: '1 something street, Tel Aviv, Israel',
                                rating: 4,
                                max_delivery_time: -10)
    assert restaurant.invalid?
    assert restaurant.errors[:rating].any?
    assert restaurant.errors[:max_delivery_time].any?

    restaurant = Restaurant.new(name: 'rest 1',
                                address: '1 something street, Tel Aviv, Israel',
                                rating: -2,
                                max_delivery_time: 60)
    assert restaurant.invalid?
    assert restaurant.errors[:rating].any?
    assert restaurant.errors[:cuisine].any?
    assert restaurant.errors[:max_delivery_time].empty?
  end
end
