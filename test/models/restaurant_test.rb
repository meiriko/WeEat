require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  include FactoryGirl::Syntax::Methods

  test 'restaurant attributes should not be empty' do
    restaurant = Restaurant.new
    assert restaurant.invalid?
    assert restaurant.errors[:name].any?
    assert restaurant.errors[:cuisine].any?
    assert restaurant.errors[:address].any?
  end

  test 'restaurant rating and max delivery time should be in range' do
    restaurant = build(:restaurant, rating: 4, max_delivery_time_minutes: -10)

    assert restaurant.invalid?
    assert restaurant.errors[:rating].any?
    assert restaurant.errors[:max_delivery_time_minutes].any?
  end

  test 'no null values in restaurant name' do
    restaurant = build(:restaurant, name: nil)
    assert restaurant.invalid?
    assert restaurant.errors[:name].any?
  end

  test 'valid restaurant should pass validation' do
    restaurant = build(:restaurant)
    assert restaurant.valid?
  end

end
