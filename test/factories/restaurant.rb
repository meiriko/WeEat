require 'factory_girl'
require 'ffaker'

FactoryGirl.define do
  cuisines = %w{ indian italian french fusion sushi burger }

  factory :restaurant do
    name { FFaker::Company.name }
    address { "#{FFaker::Address.street_address}, #{FFaker::Address.city}, #{FFaker::Address.country}" }
    max_delivery_time_minutes { [*1..10].sample * 10}
    cuisine { cuisines.sample }
    rating { rand (4) }
    accepts_10bis { rand(2) }
  end

end